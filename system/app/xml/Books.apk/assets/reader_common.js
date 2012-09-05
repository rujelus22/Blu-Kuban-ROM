// Copyright 2010 Google Inc.  All Rights Reserved.


/**
 * @fileoverview JavaScript implementation of an e-book reader.  Uses CSS multi-column layout,
 * absolute and relative positioning, and black magic.
 *
 * @author attila@google.com (Attila Bodis)
 */


/*
 * Reader state, represented as various structs.  Could be encapsulated in a singleton class,
 * but why bother.
 */


/**
 * Struct containing system configuration settings.
 *
 * @type {Object}
 */
var system = {

    /**
     * The screen density sent by the java layer (DisplayMetrics#density).
     */
    displayDensity: 1.0,

    /**
     * Flag set to true when applyPreferences determines that the webview / javascript layer
     * doesn't use pixels in its measurements. This is a workaround for the bug #5233762 present
     * in Honeycomb but not ICS or pre HC.
     *
     * When sending coordinate values to the bridge, always call jsCoordinateToJava to make
     * sure that the density is properly compensated for. When getting pixels from java, call
     * javaCoordinateToJS.
     */
    compensateDensity: false,

    /**
     * Screen height in pixels.  This is just {@code window.innerHeight}, cached for performance.
     *
     * @type {number}
     */
    screenHeight: window.innerHeight,

    /**
     * Screen width in pixels.  This is just {@code window.innerWidth}, cached for performance.
     *
     * @type {number}
     */
    screenWidth: window.innerWidth,

    /**
     * whether profiling information should be running
     * @type {boolean}
     */
    profilingON: false, // DO NOT CHECKIN when turned on.

    /**
     * whether pagination verification code should be running
     * @type {boolean}
     */
    verifyPaginationON: false, // DO NOT CHECKIN when turned on.

    /**
     * whether pagination code should be drawing rectangles to help with debugging
     * @type {boolean}
     */
    drawElementRectanglesON: false, // DO NOT CHECKIN when turned on.

    /**
     * whether to draw reading positions to help with debugging
     * @type {boolean}
     */
    drawReadingPositionsON: false, // DO NOT CHECKIN when turned on.

    /**
     * Number of pixels to add between chapters.
     * Set to zero for now, but should be increased if some chapters bleed into each other.
     * Also used to pad the first chapter (in case it overflows its top).
     * @type {number}
     */
    interChapterPadding: 0,

    /**
     * flag to disable publisher CSS.
     * @type {boolean}
     */
    disablePublisherCSS: false
};


/**
 * Struct containing user preference settings.  Note that changing any of these properties (with
 * the exception of {@code textAlign}) invalidates the column layout, so the volume must be
 * repaginated.
 *
 * @type {Object}
 */
var pref = {
    /**
     * Whether the reader is in night mode (light text on dark background) instead of day mode
     * (dark text on light background).
     *
     * @type {boolean}
     */
    isNightMode: false,

    /**
     * CSS font-family spec or undefined/null (to use the publisher specified fonts).
     *
     * @type {string}
     */
    fontFamily: undefined,

    /**
     * Zoom factor applied to make the text look bigger or smaller.
     *
     * @type {number}
     */
    textZoom: 1,

    /**
     * CSS line-height spec.
     *
     * @type {number}
     */
    lineHeight: 1.25, // Any less causes descenders to bleed across columns sometimes (bug 2859956).

    /**
     * CSS text-align spec.
     *
     * @type {string}
     */
    textAlign: 'left'
};


/**
 * Struct containing cached viewport dimensions.  Recalculated each time the screen configuration
 * changes.
 *
 * @type {Object}
 */
var viewport = {
    /**
     * Viewport height, in pixels.
     *
     * @type {number}
     */
    height: system.screenHeight,

    /**
     * Viewport width, in pixels.
     *
     * @type {number}
     */
    width: system.screenWidth,

    /**
     * Viewport aspect ratio.  Equals (viewport height) / (viewport width).
     *
     * @type {number}
     */
    aspectRatio: -1 // Calculated in applyPreferencesInternal_(), crashes if we do it here.
};


/**
 * Enum of chapter states.
 *
 * TODO(arnaudberry): rename to PassageState
 *
 * @enum {number}
 */
var ChapterState = {
    // The chapter hasn't been loaded (or even scheduled to be loaded) yet.
    NOT_LOADED: 1,

    // A task has been scheduled to load the chapter, but not yet executed.
    SCHEDULED: 2,

    // Chapter segments are being loaded; pagination and indexing haven't started yet.
    LOADING: 3,

    // Loading, pagination, and indexing complete; the chapter is ready.
    READY: 4
};

/**
 * Modes for searching for highlights using {@link #loadPage}.
 *
 * @enum {number}
 */
var HighlightSearch = {
    // Just go to the specified device page, without looking for highlights.
    NONE: 0,

    // Go to the first highlight in the specified chapter (ignores any page index specified) or
    // any subsequent chapter.
    FIRST_IN_CHAPTER: 1,

    // Go to the next highlight after the specified reading position.
    NEXT: 2,

    // Go to the next highlight after (but not on) the specified device page.
    NEXT_ON_DIFFERENT_PAGE: 3,

    // Go to the last highlight in the specified chapter (ignores any page index specified) or
    // any previous chapter.
    LAST_IN_CHAPTER: -1,

    // Go to the previous highlight before the specified reading position.
    PREVIOUS: -2,

    // Go to the previous highlight before (but not on) the specified device page.
    PREVIOUS_ON_DIFFERENT_PAGE: -3
};

/**
 * Struct containing metadata about the current volume.  Initialized in {@link initializeReader}.
 *
 * @type {Object}
 */
var volume = {
    /**
     * The account name.
     *
     * @type {string}
     */
    account: null,

    /**
     * The volume ID.
     *
     * @type {string}
     */
    id: null,

    /**
     * Array of chapter information.
     *
     * @type {Array.<Chapter>}
     */
    chapters: [],

    /**
     * Array of RegExp that should be applied to volume text; any occurrences
     * found will be highlighted.
     *
     * @type {Array.<RegExp>}
     */
    highlights: [],

    /**
     * The vertical position where the next chapter that will be loaded should be placed.
     * Initialized with system.interChapterPadding in case padding becomes needed.
     * @type {number}
     */
    nextChapterTop: system.interChapterPadding,

    /**
     * Flag set to true when a chapter is being loaded and paginated.
     * @type {boolean}
     */
    chapterLoading: false
};

/**
 * Converts a value in the web view javascript coordinate system into pixels usable in java.
 * @param value the value to convert
 * @returns the value multiplied by the displayDensity when needed.
 */
function jsCoordinateToJava(value) {
    if (system.compensateDensity) {
        return Math.round(value * system.displayDensity);
    } else {
        return value;
    }
}

/**
 * Converts a pixel value from the java coordinate system of the webview into a value usable in
 * javascript.
 * @param value the value to convert
 * @returns the value divided by the displayDensity when needed.
 */
function javaCoordinateToJS(value) {
    if (system.compensateDensity) {
        return Math.round(value / system.displayDensity);
    } else {
        return value;
    }
}

/**
 * Stores where a displayed page begins and ends in the webview, as well as other page information.
 *
 * @constructor
 */
function PageBounds(top, bottom) {
    /**
     * The coordinate of the top of the page.
     * @type {number}
     */
    this.top = top;

    /**
     * The coordinate of the bottom of the page.
     * Note that bottom does NOT belong to this page.
     * @type {number}
     */
    this.bottom = bottom;

    /**
     * The index of the first reading position (in {@link Chapter#gbsIds}) that appears on the page.
     * @type {number}
     */
    this.firstReadingPositionIndex = undefined;
}

/**
 * Determine if the page contains a y coordinate.
 *
 * @param {number} yCoord y-coordinate
 */
PageBounds.prototype.containsYCoord = function(yCoord) {
    return (this.top <= yCoord) && (yCoord < this.bottom);
}

/**
 * Determine if a page is above a y coordinate (ie if the coordinate is below the page).
 *
 * @param {number} yCoord y-coordinate
 */
PageBounds.prototype.isAboveYCoord = function(yCoord) {
    return (this.bottom <= yCoord);
}


/**
 * Stores a string and an offset into that string.
 *
 * @constructor
 */
function TextOffset(text, offset) {
    this.text = text;
    this.offset = offset;
}

/**
 * Characteristics of a chapter, including which segments comprise it and data
 * to reading positions.  Note we do not store the bounding box of the chapter element,
 * because that changes when the viewport is moved.
 *
 * TODO(arnaudberry): rename to Passage
 *
 * @param {number} index The zero-based index of the chapter within the volume
 * @param {Array.<string>} segmentIds Array of segment IDs in the chapter
 * @constructor
 */
function Chapter(index, segmentIds) {

    /**
     * The zero-based index of the chapter within the volume.
     *
     * @type {number}
     */
    this.index = index;

    /**
     * Array of segment IDs in the chapter.
     *
     * @type {Array.<string>}
     */
    this.segmentIds = segmentIds;

    /**
     * Loading/ready state of the chapter.
     *
     * @type {ChapterState}
     */
    this.state = ChapterState.NOT_LOADED;

    /**
     * Callback to invoke when the chapter contents finish loading.
     *
     * @type {Function}
     */
    this.callback = undefined;

    /**
     * The DOM element containing the chapter.
     *
     * @type {Element}
     */
    this.element = undefined;

    /**
     * The number of device pages in the chapter.
     *
     * @type {number}
     */
    this.pageCount = undefined;

    /**
     * DOM-ordered array of reading position anchor tag ID values.
     *
     * @type {Array.<string>}
     */
    this.gbsIds = [];

    /**
     * Array parallel to {@code gbsIds} that stores the vertical position of each anchor.
     *
     * @type {Array.<number>}
     */
    this.anchorsPosY = [];

    /**
     * Dictionary of reading position anchor tag ID values to index within this.gbsIds.
     *
     * @type {Object.<number>}
     */
    this.idToIndex = {};

    /**
     * Cache mapping the index of an anchor tag in {@code gbsIds} to the device page
     * on which that anchor appears.
     *
     * @type {Array.<number>}
     */
    this.gbsDevicePages = [];

    /**
     * Caches where each page begins and ends in the vertical column.
     *
     * @type {Array.<PageBounds>}
     */
    this.pagesBounds = [];

    /**
     * Array of character offsets of reading position anchor tags in the
     * passage's text content. Parallels this.gbsIds.
     *
     * @type: {Array.<number>}
     */
    this.gbsIdOffsets = [];

    /**
     * The total number of matches found by the highlight function (when searching for something).
     *
     * @type {number}
     */
    this.highlightsCount = 0;

}

/**
 * Sets the anchor tag index information.
 *
 * @param {Array.<string>} gbsIds DOM-ordered array of reading position anchor
 *            tag ID values.
 * @param {Object.<number>} idToIndex Dictionary of reading position anchor tag
 *            ID values to index within this.gbsIds.
 * @param {Array.<number>} gbsIdOffsets @see Chapter#gbsIdOffsets
 * @param {Array.<number>} anchorsPosY @see Chapter#anchorsPosY
 */
Chapter.prototype.setIndices = function(gbsIds, idToIndex, gbsIdOffsets, anchorsPosY) {
    this.gbsIds = gbsIds;
    this.idToIndex = idToIndex;
    this.gbsIdOffsets = gbsIdOffsets;
    this.anchorsPosY = anchorsPosY;
    this.gbsDevicePages = [];
};

/**
 * Clears any data about correspondence between anchor tags and device pages, should be
 * called after format-altering settings changes such as changing the font size.
 */
Chapter.prototype.clearIndices = function() {
    delete this.pageCount;
    this.gbsIds.length = 0;
    this.idToIndex = {};
    this.anchorsPosY = [];
    this.gbsDevicePages.length = 0;
};

/**
 * Resets chapter back to unloaded state, clearing any state defined by previous loading.
 */
Chapter.prototype.reset = function() {
    this.state = ChapterState.NOT_LOADED;
    delete this.callback;
    delete this.element;
    this.pagesBounds = [];
    this.clearIndices();
    this.highlightsCount = 0;
};

/**
 * Traverses text appearing in the chapter, highlighting current search terms
 * as specified in {@link volume.highlights}.
 *
 * TODO(arnaudberry): does the iterator include text content of an Attr?  If so we should restrict
 * to case where parent is an element.
 */
Chapter.prototype.highlight = function() {
    this.highlightsCount = 0;
    var element = this.element;
    try {
        // process each requested highlight RegExp separately
        for (var i = 0, target; target = volume.highlights[i]; i++) {
            var matches = [];

            // search all text nodes in-order for matches
            var iter = document.createNodeIterator(element, NodeFilter.SHOW_TEXT, null, false);

            // iterate through all matches using exec() on global RegExp
            // https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/RegExp/exec
            var node;
            while ((node = iter.nextNode())) {
                var targetMatch;
                while ((targetMatch = target.exec(node.textContent))) {
                    // record node and span of discovered match
                    matches.push({
                        parentNode: node,
                        start: targetMatch.index,
                        end: target.lastIndex
                    });
                }
            }

            this.highlightsCount += matches.length;

            bridge.d('Chapter[' + this.index + '].highlight() found '
                    + matches.length + ' matches for target ' + target);
            iter.detach();

            // now iterate backwards through document, creating marked spans for
            // each match. we need to walk backwards so we don't break
            // parentNode character indexes as we create new text nodes.
            for (var j = matches.length - 1; j >= 0; j--) {
                var match = matches[j];
                var parentNode = match.parentNode;

                // create new node after match, and exactly at match
                parentNode.splitText(match.end);
                var matchNode = parentNode.splitText(match.start);

                // create element to wrap styling around new match, and inject
                // into place where the standalone match had been.
                var styledNode = $dom('SPAN', 'highlight');
                parentNode.parentNode.replaceChild(styledNode, matchNode);
                styledNode.appendChild(matchNode);
            }
        }
    } catch (e) {
        bridge.e('Problem during highlightChapter(): ' + e);
    }
};

/**
 * Iterates through the iterator until reach an anchor tag with ID equal to {@code position}.
 *
 * @param {NodeIterator} iter to iterate over
 * @param {string} position to iterate to
 */
Chapter.prototype.iterateToPosition = function(iter, position) {
    var node, matchNode;
    while ((node = iter.nextNode())) {
        if (node.tagName == 'A' && node.id == position) {
            matchNode = node;
            break;
        }
    }
    if (!matchNode) {
        bridge.e('Could not find anchor with id ' + position);
    }
    return node;
};


/**
 * Searches chapter for next highlighted phrase.  Used for "next search result"
 * button and also to work around low-resolution search results.
 *
 * If {@code opt_position} is supplied, only returns results after that anchor
 * tag.
 *
 * If {@code opt_pageIndex} is supplied, only returns results after that device
 * page.  This is used by the "next search result" button to ensure that it
 * advances the device page.  Note that if there are many highlights, this option
 * is much more efficient when used in conjunction with {@code opt_position}
 * because it minimizes the number of calls to getBoundingClientRect.
 *
 * @param {string=} opt_position ID of anchor tag at which to start searching
 * @param {number=} opt_pageIndex for which to ignore results
 * @return {number} 0-based device page index, or -1 when next highlight was
 *         missing.
 * @private
 */
Chapter.prototype.getNextHighlightPageIndex = function(opt_position, opt_pageIndex) {
    var element = this.element;
    var iter = document.createNodeIterator(element, NodeFilter.SHOW_ELEMENT, null, false);

    if (opt_position) {
        // First stage: search for opt_position in chapter
        this.iterateToPosition(iter, opt_position);
    }

    // Second stage: search for next highlight
    var context = getZoomedBoundingClientRect(element, getZoomForTextFromPrefs_());
    var noPageSkip = !isDef(opt_pageIndex);
    var node, highlightPageIndex;
    while (node = iter.nextNode()) {
        // Note: do NOT call getDevicePageIndexForNode_ on every node as that can crash the JNI
        // with a ReferenceTable overflow.
        if (node.tagName == 'SPAN' && node.className == 'highlight') {
            var nodePageIndex = this.getDevicePageIndexForNode_(node, context);
            if (noPageSkip || nodePageIndex > opt_pageIndex) {
                highlightPageIndex = nodePageIndex;
                break;
            } else {
                bridge.d('Skipping highlight at page index ' + nodePageIndex);
            }
        }
    }

    // Free up iterator resources
    iter.detach();

    // return page index of the next highlight, otherwise -1 when nothing found
    if (isDef(highlightPageIndex)) {
        return highlightPageIndex;
    } else {
        return -1;
    }
};


/**
 * Searches chapter for previous highlighted phrase.  Used for
 * "previous search result" button.
 *
 * If {@code opt_position} is supplied, only returns results before that anchor
 * tag.
 *
 * If {@code opt_pageIndex} is supplied, only returns results before that device
 * page.  This is used by the "previous search result" button to ensure that it
 * retards the device page.  Note that if there are many highlights, this option
 * is much more efficient when used in conjunction with {@code opt_position}
 * because it minimizes the number of calls to getBoundingClientRect.
 *
 * @param {string=} opt_position ID of anchor tag at which to start searching
 * @param {number=} opt_pageIndex for which to ignore results
 * @return {number} 0-based device page index, or -1 when previous highlight was
 *         missing.
 * @private
 */
Chapter.prototype.getPreviousHighlightPageIndex = function(opt_position, opt_pageIndex) {
    var element = this.element;
    var iter = document.createNodeIterator(element, NodeFilter.SHOW_ELEMENT, null, false);

    var node;
    if (opt_position) {
        // First stage: search for opt_position in chapter
        this.iterateToPosition(iter, opt_position);
    } else {
        // First stage: iterate to end of chapter
        while (node = iter.nextNode());
    }

    // Second stage: search for previous highlight
    var context = getZoomedBoundingClientRect(element, getZoomForTextFromPrefs_());
    var noPageSkip = !isDef(opt_pageIndex);
    var highlightPageIndex;
    while (node = iter.previousNode()) {
        if (node.tagName == 'SPAN' && node.className == 'highlight') {
            var nodePageIndex = this.getDevicePageIndexForNode_(node, context);
            if (noPageSkip || nodePageIndex < opt_pageIndex) {
                highlightPageIndex = nodePageIndex;
                break;
            } else {
                bridge.d('Skipping highlight at page index ' + nodePageIndex);
            }
        }
    }

    // Free up iterator resources
    iter.detach();

    // return page index of the previous highlight, otherwise -1 when nothing found
    if (isDef(highlightPageIndex)) {
        return highlightPageIndex;
    } else {
        return -1;
    }
};

/**
 * Calculates how the pages should be split
 * @return a string with timing data
 */
Chapter.prototype.paginate = function() {
    try {
        var textZoom = getZoomForTextFromPrefs_();
        var paginator = new Paginator(this, textZoom);
        var result = paginator.paginate();
        this.pagesBounds = result.pagesBounds;
        this.pageCount = this.pagesBounds.length;
        return result.timing;
    } catch (e) {
        bridge.e('Problem during chapter.paginate(): ' + e);
        return "";
    }
}

/**
 * Builds a string representation of the page boundaries so it can be sent to the java side.
 */
Chapter.prototype.getPageBoundsForJava = function() {
    try {
        var pagesCount = this.pagesBounds.length;
        var result = "";

        for (var ii = 0; ii < pagesCount; ii++) {
            var curPage = this.pagesBounds[ii];
            if (ii > 0) {
                result += ",";
            }

            // The Java layer expects integer values => fix float values as a safety net and print
            // an error (reveals bugs in the paginator).
            var pageTop = jsCoordinateToJava(curPage.top);
            var pageBottom = jsCoordinateToJava(curPage.bottom);
            if (!isInt(curPage.top) || !isInt(curPage.bottom)) {
                pageTop = Math.floor(pageTop);
                pageBottom = Math.floor(pageBottom);

                bridge.e('getPageBoundsForJava page: ' + ii + ' has floating point bounds: '
                    + curPage.top + "," + curPage.bottom);
            }

            result += pageTop + "," + pageBottom;
        }

        return result;
    } catch (e) {
        bridge.e('Problem during chapter.getPageBoundsForJava(): ' + e);
        return "";
    }
}


/**
 * Returns the page index of the next highlight in the chapter according to the specified
 * search strategy, or -1.
 *
 * @param {string} pageIndex at which to begin search
 * @param {string} opt_readingPosition explicitly-provided reading position
 * @param {string} readingPosition at which to begin search
 * @param {HighlightSearch} highlightSearch search strategy
 */
Chapter.prototype.getNextHighlight = function(pageIndex, opt_readingPosition, readingPosition,
        highlightSearch) {
    if (this.highlightsCount <= 0) return -1;

    bridge.d("getNextHighlight() being called with pageIndex = " + pageIndex +
            " opt_readingPosition " + opt_readingPosition + " readingPosition " + readingPosition +
            " highlightSearch " + highlightSearch);
    var newPageIndex;
    switch (highlightSearch) {
        case HighlightSearch.FIRST_IN_CHAPTER:
            newPageIndex = this.getNextHighlightPageIndex();
            break;
        case HighlightSearch.NEXT:
            if (!isDef(opt_readingPosition)) {
                bridge.e('Searching for NEXT requires an explicit reading position');
            }
            newPageIndex = this.getNextHighlightPageIndex(readingPosition);
            break;
        case HighlightSearch.NEXT_ON_DIFFERENT_PAGE:
            newPageIndex = this.getNextHighlightPageIndex(readingPosition, pageIndex);
            break;
        case HighlightSearch.LAST_IN_CHAPTER:
            newPageIndex = this.getPreviousHighlightPageIndex();
            break;
        case HighlightSearch.PREVIOUS:
            if (!isDef(opt_readingPosition)) {
                bridge.e('Searching for PREVIOUS requires an explicit reading position');
            }
            newPageIndex = this.getPreviousHighlightPageIndex(readingPosition);
            break;
        case HighlightSearch.PREVIOUS_ON_DIFFERENT_PAGE:
            newPageIndex = this.getPreviousHighlightPageIndex(readingPosition, pageIndex);
            break;
        default:
            bridge.e('Unexpected highlightSearch: ' + highlightSearch);
    }
    return newPageIndex;
};


Chapter.prototype.applyPreferences = function() {
    try {
        if (this.element != null) {
             var zoom = getZoomForTextFromPrefs_();
             var width = viewport.width / zoom;
             this.element.style.width = width + 'px';
             this.element.style.zoom = zoom;
        }
    } catch (e) {
        bridge.e('Uncaught exception in Chapter.prototype.applyPreferences: ' + e);
    }
}

/**
 * Determine if a y-coordinate is inside a chapter.
 *
 * @param {number} yCoord y-coordinate
 */
Chapter.prototype.containsYCoord = function(yCoord) {
    var length = this.pagesBounds.length;
    if (length > 0) {
        return (this.pagesBounds[0].top <= yCoord)
                && (this.pagesBounds[length - 1].bottom > yCoord);
    }
    return false;
}


/*
* Public API.  Only these functions are guaranteed to be callable from the enclosing activity.
*/


/**
 * Initializes the reader.  Must be called before any other JS API method.  Notifies the activity
 * by calling {@link bridge.onReaderInitialized} when finished.
 *
 * The first argument is the volume ID.  The second argument is an array of arrays of segment IDs,
 * where each top-level element contains the list of segments comprising a chapter.  For example,
 * <pre>
 *   initializeReader(
 *       'PfmjWho_zOAC',
 *       [['cvi'], ['tp'], ['toc'], ['ded'], ['c01', 'c02'], ['adc'], ['cop']]);
 * </pre>
 * sets the volume ID to PfmjWho_zOAC; the volume has 7 chapters; chapters 1-4, 6, and 7 contain a
 * single segment, while chapter 5 contains two segments.
 *
 * @param {string} account Account name
 * @param {string} volumeId Volume ID.
 * @param {Array.<Array.<string>>} chapters Array of arrays of segment IDs for each chapter.
 * @param {Array.<string>} list of local uris of CSS files to use for the whole volume.
 */
function initializeReader(account, volumeId, chapters, cssLocalUris) {
    try {
        // In case we're loading (or reloading) a volume while a previous load is still in progress,
        // clear any pending tasks.
        clearPendingTasks();

        // Initialize container element.  This removes any prior content, and creates a new content
        // element.
        $('container').innerHTML = '<div id="content"></div>';

        // Initialize volume metadata.
        volume.account = account;
        volume.id = volumeId;
        volume.chapters = [];

        // Add the CSS links to the DOM.
        var shouldCleanCSS = addCssLinks(cssLocalUris);

        // Initialize chapter metadata.
        var chapterCount = chapters.length;
        for (var i = 0; i < chapterCount; i++) {
            var segmentIds = chapters[i];
            volume.chapters[i] = new Chapter(i, segmentIds);
        }

        resetChapters_();

        // Schedule a task so that the DOM has time to import the CSS files.
        scheduleTask(function() {
            if (shouldCleanCSS) {
                cleanCSS(cssLocalUris);
            }

            // TESTING CODE - DO NOT COMMIT UNCOMMENTED
            //bridge.e('!!!!! Do not forget to comment out this code !!!!! ');
            //for (var ii= 0; ii < chapterCount; ii++) {
            //    enqueueChapterRequest_(ii, emptyCallback);
            //}

            // Notify the activity that the reader has been initialized.
            bridge.d('initializeReader(): Volume ' + volume.id + ' initialized, has ' + chapterCount
                + ' chapter(s)');
            bridge.onReaderInitialized();

        }, Delay.NONE);
    } catch (e) {
        bridge.e('Uncaught exception in initializeReader(): ' + e);
    }
}

/**
 * Clean badly designed CSS rules.
 * Currently only calls {@link cleanTextIndent} on each rule.
 * @param {Array.<string>} cssLocalUris List of locally stored uris of CSS files to use for the
 *      whole volume. Those uris represent absolute paths.
 */
function cleanCSS(cssLocalUris) {
    try {
        for (var ii = 0, stylesheet; stylesheet = document.styleSheets[ii]; ii++) {
            // Only process the stylesheet if it corresponds to a publisher CSS file.
            // Note: most books have a single stylesheet.
            for (var jj = 0, uri; uri = cssLocalUris[jj]; jj++) {
                if (stylesheet.href == uri) {
                    for (var kk = 0, rule; rule = stylesheet.cssRules[kk]; kk++) {
                        cleanTextIndent(rule);
                    }
                }
            }
        }
    } catch (e) {
        bridge.e('Uncaught exception in cleanCSS(): ' + e);
    }
}

/**
 * Tries to prevent a negative text-indent from moving text outside of the page. This happens when
 * the indent is bigger than the margin (bug 5009104).
 * Note: only margin-left is considered (ignoring margin).
 * Note: the units of text-indent and margin-left are assumed the same.
 * @param {CSSRule} cssRule The CSS rule to examine.
 */
function cleanTextIndent(cssRule) {
    // Identify negative text indents and try to fix them if needed.
    var indent = cssRule.style.textIndent;
    if (indent && (indent.indexOf('-') >= 0)) {
        var indentNumber = parseCssNumber(indent);
        var leftMarginNumber = parseCssNumber(cssRule.style.marginLeft);
        var newIndent = undefined;
        if (leftMarginNumber == null) {
            // No left margin defined, set to zero.
            newIndent = 0 + indentNumber.unit;
        } else if ((indentNumber.value + leftMarginNumber.value) < 0) {
            // Indent would be negative, set to -margin to make zero.
            newIndent = -leftMarginNumber.value + leftMarginNumber.unit;

            if (indentNumber.unit != leftMarginNumber.unit) {
                bridge.e('pruning cssRule despite incompatible units: '
                    + cssRule.cssText + ' new indent: ' + newIndent);
            }
        }

        if (isDef(newIndent)) {
            cssRule.style.textIndent = newIndent;
        }
    }
}

/**
 * Create and add the appropriate CSS links.
 * @param {Array.<string>} cssLocalUris List of locally stored uris of CSS files to use for the
 *      whole volume. Those uris represent absolute paths.
 * @param {string} relativePath Optional path from the containing html page to the local default
 *      CSS files (only used in testing).
 * @return true if the imported CSS should be inspected (ie is publisher css).
 */
function addCssLinks(cssLocalUris, opt_relativePath) {
    try {
        var shouldCleanCSS = false;
        var headElement = getHeadElement();

        // Remove previous link elements (prevents leftovers in case the webview is reused).
        var linkElements = headElement.getElementsByTagName('link');
        // linkElements is a live NodeList, so it changes as we remove elements from the head.
        while (linkElements.length > 0) {
            headElement.removeChild(linkElements.item(0));
        }

        // Add new link elements.
        var cssUrisCount = cssLocalUris.length;
        if (system.disablePublisherCSS || cssUrisCount <= 0) {
            // Use default CSS
            var defaultCssUri = isDef(opt_relativePath) ? opt_relativePath + 'style.css'
                    : 'style.css';
            headElement.appendChild(createCssLink(defaultCssUri));
        } else {
            // Use publisher CSS
            for (var ii = 0; ii < cssUrisCount; ii++) {
                headElement.appendChild(createCssLink(cssLocalUris[ii]));
            }
            shouldCleanCSS = true;
        }

        var cssOverrideUri = isDef(opt_relativePath) ? opt_relativePath + 'override.css'
                : 'override.css';

        // Always add the override.css
        headElement.appendChild(createCssLink(cssOverrideUri));

        return shouldCleanCSS;
    } catch (e) {
        bridge.e('Uncaught exception in addCssLinks(): ' + e);
    }
}

/**
 * Resets internal state of any chapters that have been loaded into
 * {@link volume}. This will also remove any attached Elements from
 * {@link document}, but will not clear preferences when applied.
 *
 * @private
 */
function resetChapters_() {
    $('content').innerHTML = '';

    var chapterCount = volume.chapters.length;
    for (var i = 0; i < chapterCount; i++) {
        volume.chapters[i].reset();
    }

    // Reset chapter layout too.
    volume.nextChapterTop = system.interChapterPadding;

    // Clear the chapter loading flag (fix for when changing settings very quickly).
    volume.chapterLoading = false;

    if (system.drawElementRectanglesON) {
        var rectsLayerElements = document.getElementById(RECTS_LAYER_DIV_ID);
        rectsLayerElements.innerHTML = ""; // Clear the previous rects.
    }
}

/**
 * Returns the zoom value to use to make text appear larger or smaller
 *
 * @private
 */
function getZoomForTextFromPrefs_() {
    var zoom = pref.textZoom;
    if (zoom <= 0) {
        zoom = 0.05; // This is just a safety net to prevent divisions by zero.
    }
    return zoom;
}

/**
 * Applies reader preferences.  As a side effect, also recalculates the dimensions of the screen
 * and the viewport.  Calls {@link bridge.onPreferencesApplied} when done.
 *
 * @param {boolean} isNightMode Whether to display text in night mode (light text on dark
 *     background).
 * @param {string} fontFamily CSS font-family spec, e.g. '"Droid Sans", Arial, sans-serif', or
 *                  undefined/null to use the fonts specified by the publisher.
 * @param {number} textZoom zoom factor to apply to the text, 1 meaning default size.
 * @param {string} lineHeight CSS line-height spec, e.g. 1.25.
 * @param {string} textAlign CSS text-aling spec, e.g. 'justify'.
 * @param {number} displayDensity the display density (ignored when <= 0).
 * @param {number} pageHeight the height IN PIXELS of the webview (ignored if displayDensity <= 0).
 */
function applyPreferences(isNightMode, fontFamily, textZoom, lineHeight, textAlign, displayDensity,
        pageHeight) {
    try {
        // Measure screen dimensions.
        system.screenHeight = window.innerHeight;
        system.screenWidth = window.innerWidth;

        // Sometimes WebView is buggy and reports nonsensical dimensions; in that case, let it
        // settle down and try again.
        if (system.screenHeight <= 0 || system.screenWidth <= 0) {
            bridge.e('WebView reports invalid screen dimensions (' + system.screenWidth + 'x' +
                    system.screenHeight + '), retrying');
            scheduleTask(function() {
                applyPreferences(isNightMode, fontFamily, textZoom, lineHeight, textAlign,
                    displayDensity, pageHeight);
            }, Delay.SHORT);
            return;
        }

        // Configure density
        if (displayDensity > 0) {
            system.displayDensity = displayDensity;
            // Compensate for the screen density if the pageHeight doesn't match the innerHeight
            // of the window (bug: 5233762).
            // Only trigger the compensation if the density is not 1.0 and if the adjusted height
            // is within 2 pixels of the javascript measurement (bugs 5290567 and 5077182).
            // TODO(arnaudberry) investigate a different approach based on the js size of an image
            // of known dimensions.
            system.compensateDensity = (Math.abs(window.innerHeight - pageHeight) >= 1.0) &&
                    (Math.abs(displayDensity - 1.0) > 0.001) &&
                    (Math.abs(window.innerHeight - pageHeight / displayDensity) < 2);

            // Work-around b/5077182: if JS is incorrect about page height by a factor approx. equal
            // to the display density, it's in dip instead of pixels and we have to compensate to
            // keep the text from being displayed too big
            if (system.compensateDensity) {
                textZoom = textZoom / displayDensity;
            }
        }

        bridge.d('applyPreferences compensateDensity: ' + system.compensateDensity
            + ' displayDensity: ' + displayDensity + ' window.innerHeight: ' + window.innerHeight
            + ' pageHeight: ' + pageHeight);

        // Update reader preferences.
        pref.isNightMode = isNightMode;
        pref.fontFamily = fontFamily;
        pref.textZoom = textZoom;
        pref.lineHeight = isString(lineHeight) ? parseFloat(lineHeight) : lineHeight;
        pref.textAlign = textAlign;

        applyPreferencesInternal_();

        bridge.onPreferencesApplied();
    } catch (e) {
        bridge.e('Uncaught exception in applyPreferences(): ' + e);
    }
}

/**
 * Sets the current text to be highlighted in the volume. Input can be of form
 * {@code "in the" dark}, which will cause all instances of the
 * {@code "in the"} phrase and {@code dark} to be highlighted separately. After
 * a highlight is requested, any future calls to {@link loadPage} or
 * {@link loadPosition} will correctly display highlights near that location.
 */
function setHighlight(highlight) {
    // split incoming highlight so we handle quoted strings and standalone words
    // as separate phrases.
    var phrase = /(?:\b([^"\b]+)\b|"(.+?)")/g;
    volume.highlights = [];

    // When highlight is undefined, phrase.exec produces one non null phraseMatch with a value of
    // undefined that is added to the volume.highlights array. Then chapter.highlight searches
    // undefined in the book causing unnecessary computation (bug 4983582).
    if (highlight != null) {
        // iterate through all matches using exec() on global RegExp
        // https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/RegExp/exec
        var phraseMatch;
        while ((phraseMatch = phrase.exec(highlight))) {
            // at least one of the capture groups was found; pick the defined one as
            // our raw highlight string.
            var phraseRaw = isDef(phraseMatch[1]) ? phraseMatch[1] : phraseMatch[2];
            volume.highlights.push(new RegExp('\\b' + phraseRaw + '\\b', 'ig'));
        }
    }

    // In case we're loading (or reloading) a volume while a previous load is
    // still in progress, clear any pending tasks.
    clearPendingTasks();

    // clear any loaded chapters, so future requests reload with highlighting
    resetChapters_();
}

/**
 * Loads and paginates the given passage if necessary, and delivers a reading
 * position from the page to the bridge via onPageLoaded. Note that page indices
 * become stale if a configuration change forces the volume to be repaginated.
 *
 * The opt_readingPosition parameter allows loadPosition to specify the position
 * to report back via onPageLoaded.  This way we respect the originally
 * requested position, so that just opening the book will not actually change
 * the reading position.  It is ignored if pageOffset != 0.
 *
 * If {@code opt_highlightSearch} != 0, then we will search for the next
 * highlight according to the appropriate {@link HighlightSearch} rule.
 *
 * TODO(virgilking): remove opt_pageOffset.
 *
 * @param {number} chapterIndex 0-based chapter index.
 * @param {number} pageIndex 0-based page index. A negative number means "from
 *            the end," e.g. -1 means the last page of the chapter.
 * @param {number} requestId ID provided by the caller which should be passed back
 *            in {@link bridge.onPageLoaded}.
 * @param {number=} opt_pageOffset Number of device pages to offset from the
 *            requested position before loading, defaults to 0. The offset will be applied *after*
 *            performing any requested highlight search.
 * @param {HighlightSearch=} opt_highlightSearch Rule for searching for next highlight, or 0.
 * @param {number=} opt_nextHighlightChapterIndex Chapter index at which to resume search for
 *            highlights if there are no more in this chapter.  Ignored if less than or equal
 *            to {@code chapterIndex}.
 * @param {string=} opt_readingPosition Reading position, if known.
 * @param {string=} opt_origHighlightSearch highlightSearch value as of first call to loadPage()
 *            (defaults to opt_highlightSearch)
 */
function loadPage(chapterIndex, pageIndex, requestId, opt_pageOffset,
        opt_highlightSearch, opt_nextHighlightChapterIndex, opt_readingPosition,
        opt_origHighlightSearch) {
    var pageOffset = isDef(opt_pageOffset) ? opt_pageOffset : 0;
    var highlightSearch = isDef(opt_highlightSearch) ? opt_highlightSearch : HighlightSearch.NONE;
    var chapterCount = volume.chapters.length;
    var origHighlightSearch = isDef(opt_origHighlightSearch) ?
            opt_origHighlightSearch : highlightSearch;

    bridge.d('loadPage(' + chapterIndex + ', ' + pageIndex + ', ' + requestId + ', ' +
        opt_pageOffset + ', ' + opt_highlightSearch + ', ' + opt_nextHighlightChapterIndex + ', ' +
        opt_readingPosition + ', ' + opt_origHighlightSearch + ')');

    if (chapterCount == 0) {
        // Volume has no chapters, or initializeReader() hasn't been called yet.
        bridge.e('Volume ' + volume.id + ' has no chapters');
        return;
    }

    // Normalize position for negative pageIndex and with pageOffset when requested.
    if (pageIndex < 0 || pageOffset != 0) {
        // Prepare callback used to wrap around for async operations.
        var callback = bind(loadPage, chapterIndex, pageIndex, requestId, pageOffset,
                opt_highlightSearch, opt_nextHighlightChapterIndex, opt_readingPosition,
                opt_origHighlightSearch);

        if (getChapterState_(chapterIndex) != ChapterState.READY) {
            enqueueChapterRequest_(chapterIndex, callback);
            return;
        }

        // At this point, we know the chapter in question has been loaded and paginated.
        if (pageIndex < 0) {
            // A negative page index means "from the end," i.e. -1 is the last
            // page in the chapter.
            pageIndex += volume.chapters[chapterIndex].pageCount;
        }

        // If we're going to do a highlight search, don't apply the page
        // offset now; we'll do so after performing the search later on. The
        // page offset should be relative to the page found by the search, not
        // vice versa.
        if (highlightSearch == HighlightSearch.NONE) {
            // Increment current page index by requested offset; we finish by
            // normalizing it below in two separate steps.
            pageIndex += pageOffset;
        }

        // While page is beyond current chapter bounds, keep walking forward.
        while (pageIndex >= volume.chapters[chapterIndex].pageCount &&
                chapterIndex < chapterCount) {
            pageIndex -= volume.chapters[chapterIndex].pageCount;
            if (++chapterIndex >= chapterCount) break;

            // Ensure chapter is loaded, otherwise request and finish later.
            if (getChapterState_(chapterIndex) != ChapterState.READY) {
                enqueueChapterRequest_(chapterIndex, callback);
                return;
            }
        }

        // While page is before current chapter bounds, keep walking backwards.
        while (pageIndex < 0 && chapterIndex >= 0) {
            if (--chapterIndex < 0) break;

            // Ensure chapter is loaded, otherwise request and finish later.
            if (getChapterState_(chapterIndex) != ChapterState.READY) {
                enqueueChapterRequest_(chapterIndex, callback);
                return;
            }

            pageIndex += volume.chapters[chapterIndex].pageCount;
        }
    }

    if (0 <= chapterIndex && chapterIndex < chapterCount) {
        // Chapter index in range.
        var chapter = volume.chapters[chapterIndex];
        var state = getChapterState_(chapterIndex);
        if (state != ChapterState.READY) {
            // Only log non-READY states to cut down on log spam.
            var stateDescription = getChapterStateAsString_(state);
            bridge.d('loadPage(' + chapterIndex + ', ' + pageIndex + ', ' + requestId +
                '): Chapter ' + chapterIndex + ' is ' + stateDescription);
        }
        switch (state) {
            case ChapterState.NOT_LOADED:
                // The chapter hasn't started loading yet, nor has it been scheduled to be loaded.
                // Schedule a foreground load, and add a callback to navigate to the page when done.
                setChapterState_(chapterIndex, ChapterState.SCHEDULED);
                scheduleTask(bind(loadChapter_, chapterIndex, /* opt_background */ false),
                        Delay.NONE);
                // Fall through to display the spinner and set the callback.

            case ChapterState.SCHEDULED:
            case ChapterState.LOADING:
                // The chapter is already being loaded, but the user wants it NOW, so we have to
                // show the spinner.  Just add a new callback, replacing any existing callback
                // (which could happen if a user uses the scrubber to navigate while a chapter is
                // being loaded in the foreground).
                bridge.onContentLoading();
                chapter.callback = function() {
                    loadPage(chapterIndex, pageIndex, requestId, pageOffset,
                            opt_highlightSearch, opt_nextHighlightChapterIndex,
                            opt_readingPosition, opt_origHighlightSearch);
                    scheduleTask(function() {
                        bridge.onContentReady();
                    }, Delay.SHORT);
                };
                break;

            case ChapterState.READY:
                // The chapter has already been loaded, paginated, and indexed.
                var pageCount = chapter.pageCount;
                if (pageCount == 0) {
                    // Chapter has no pages; likely a data error or a bug.
                    bridge.e('loadPage(' + chapterIndex + ', ' + pageIndex + ', ' + requestId +
                        '):  Chapter ' + chapterIndex + ' in ' + volume.id + ' has no pages');
                    // TODO(jsharkey): handle empty chapters as preview gaps by triggering new
                    // callback once we support text volumes with preview gaps; for now
                    // treat as end of volume.
                    bridge.onInvalidPosition(pageIndex, requestId);
                    loadPage(0, 0, requestId, 0);
                    return;
                } else if (pageIndex < 0 || pageIndex >= pageCount) {
                    // Page index out of range.  Default to the first page of the chapter.
                    bridge.e('loadPage(' + chapterIndex + ', ' + pageIndex + ', ' + requestId +
                        '):  Page index out of range, chapter has ' + pageCount + ' page(s)');

                    // TODO(virgilking): This situation typically occurs due to
                    // getBoundingClientRect bugs. Once those bugs are fixed,
                    // or they're handled somewhere earlier, this branch should
                    // deliver a new bridge callback indicating that the
                    // requested page is invalid.
                    // In the meantime the following workaround usually does the
                    // right thing since the getBoundingClientRect bugs seems to
                    // mainly affect reading positions on the first page of a
                    // chapter.
                    pageIndex = 0;
                }

                // Determine the closest reading position
                var newPageIndex = pageIndex;
                var readingPosition;
                if (isDef(opt_readingPosition) && pageOffset == 0) {
                    readingPosition = opt_readingPosition;
                } else {
                    readingPosition = chapter.getNearestReadingPosition(pageIndex);
                }

                // If searching for next highlight, find it and update the page index and
                // reading position
                if (highlightSearch != HighlightSearch.NONE) {
                    newPageIndex = chapter.getNextHighlight(
                            pageIndex, opt_readingPosition, readingPosition, highlightSearch);
                    if (newPageIndex >= 0) {
                        bridge.d('Found highlight at ' + newPageIndex
                                + ' (started at ' + pageIndex + ')');
                        // Recurse once with highlightSearch=NONE to apply the page offset.
                        // Note that readingPosition is intentionally set to undefined here so
                        // that it gets recomputed from the new page index:
                        loadPage(chapterIndex, newPageIndex, requestId, opt_pageOffset,
                                HighlightSearch.NONE, opt_nextHighlightChapterIndex,
                                undefined, origHighlightSearch);
                        return;
                    } else {
                        var newChapterIndex, validChapter, newHighlightSearch;
                        if (highlightSearch > 0) {
                            newChapterIndex = (isDef(opt_nextHighlightChapterIndex)
                                    && opt_nextHighlightChapterIndex > chapterIndex) ?
                                    opt_nextHighlightChapterIndex : chapterIndex + 1;
                            newPageIndex = 0;
                            validChapter = newChapterIndex < volume.chapters.length;
                            newHighlightSearch = HighlightSearch.FIRST_IN_CHAPTER;
                        } else {
                            newChapterIndex = (isDef(opt_nextHighlightChapterIndex)
                                    && opt_nextHighlightChapterIndex < chapterIndex) ?
                                    opt_nextHighlightChapterIndex : chapterIndex - 1;
                            newPageIndex = -1;
                            validChapter = newChapterIndex >= 0;
                            newHighlightSearch = HighlightSearch.LAST_IN_CHAPTER;
                        }
                        if (validChapter) {
                            bridge.d('No more highlights in chapter ' + chapterIndex
                                    + ', continuing search in chapter ' + newChapterIndex);
                            // Note that readingPosition is intentionally set to undefined here so
                            // that it gets recomputed from the new page index:
                            loadPage(newChapterIndex, newPageIndex, requestId, opt_pageOffset,
                                    newHighlightSearch, opt_nextHighlightChapterIndex,
                                    undefined, origHighlightSearch);
                            return;
                        } else {
                            bridge.d('No more highlights in book, at chapter ' + chapterIndex);
                            bridge.onNoHighlightFound(requestId, origHighlightSearch);
                            return;
                        }
                    }
                }

                // Report reading position to the app.
                // NOTE: to work around http://b/3292726 we bubble this event through
                // the javascript event queue twice, since in rare cases webkit can
                // delay DOM changes until after the first message would run, causing
                // us to snapshot stale textures.
                scheduleTask(function() {
                    scheduleTask(function() {
                        bridge.onPageLoaded(chapterIndex, newPageIndex, readingPosition,
                                requestId, origHighlightSearch);
                    }, Delay.NONE);
                }, Delay.NONE);

                // If we are within 5 pages of the end of the current chapter, and the next
                // chapter hasn't been loaded yet, load it in the background.
                var nextChapter = chapterIndex + 1;
                if ((pageCount - newPageIndex <= 5) && (nextChapter < chapterCount) &&
                        (getChapterState_(nextChapter) == ChapterState.NOT_LOADED)) {
                    bridge.d('loadPage(' + chapterIndex + ', ' + pageIndex + ', ' + requestId +
                        '): Preloading chapter ' + nextChapter + ' in the background');
                    setChapterState_(nextChapter, ChapterState.SCHEDULED);
                    scheduleTask(bind(loadChapter_, nextChapter, /* opt_background */ true),
                            Delay.SHORT);
                }

                // If we are within 5 pages of the start of the current chapter, and the previous
                // chapter hasn't been loaded yet, load it in the background.
                var previousChapter = chapterIndex - 1;
                if ((newPageIndex < 5) && (previousChapter >= 0) &&
                        (getChapterState_(previousChapter) == ChapterState.NOT_LOADED)) {
                    bridge.d('loadPage(' + chapterIndex + ', ' + pageIndex + ', ' + requestId +
                        '): Preloading chapter ' + previousChapter + ' in the background');
                    setChapterState_(previousChapter, ChapterState.SCHEDULED);
                    scheduleTask(bind(loadChapter_, previousChapter, /* opt_background */ true),
                            Delay.SHORT);
                }

                break;

            default:
                bridge.e('loadPage(' + chapterIndex + ', ' + pageIndex + ', ' + requestId +
                    '): Chapter is in unexpected state ' + stateDescription);
                break;
        }
    } else {
        // Chapter index out of range.  Default to the title page.
        bridge.e('loadPage(' + chapterIndex + ', ' + pageIndex + ', ' + requestId +
            ', ' + pageOffset + '): Chapter index out of range,' + ' volume ' + volume.id +
            ' has ' + chapterCount + ' chapter(s)');
        bridge.onInvalidPosition(pageIndex, requestId);
        loadPage(0, 0, requestId, 0);
    }
}


/**
 * Loads and paginates the passage containing the given position if necessary, and
 * delivers the resulting passage and page indices to the bridge via onPageLoaded.
 * If no exact match is found, returns the page with the nearest approximate
 * reading position, or (if all else fails) the first page in the volume. The
 * first argument is the 0-based index of the passage in which to start
 * searching for the reading position.
 *
 * @param {number} chapterIndex Chapter in which to start searching for the
 *     reading position.
 * @param {string} readingPosition Reading position.
 * @param {number} requestId an arbitrary value provided by the caller which
 *     should be passed back in {@link bridge.onPageLoaded}.
 * @param {number=} opt_pageOffset Number of device pages to offset from the
 *     requested position before loading, defaults to 0.
 * @param {number=} opt_fallbackChapterIndex Index of chapter to go to in
 *     case the reading position cannot be found; defaults to
 *     {@code chapterIndex}.
 * @param {number=} opt_highlightSearch After moving to requested position,
 *            whether/how to search for and move to the next/previous search result.
 */
function loadPosition(chapterIndex, readingPosition, requestId, opt_pageOffset,
        opt_fallbackChapterIndex, opt_highlightSearch, opt_nextHighlightChapterIndex) {
    bridge.d('loadPosition(' + chapterIndex + ', ' + readingPosition + ', ' + requestId + ', ' +
        opt_pageOffset + ', ' + opt_fallbackChapterIndex + ', ' + opt_highlightSearch +
        ', ' + opt_nextHighlightChapterIndex + ')');

    var pageOffset = isDef(opt_pageOffset) ? opt_pageOffset : 0;
    var highlightSearch = isDef(opt_highlightSearch) ? opt_highlightSearch : HighlightSearch.NONE;

    if (isReadingPosition_(readingPosition)) {
        // Plausible-looking reading position.
        var chapterCount = volume.chapters.length;
        if (chapterCount == 0) {
            // Volume has no chapters, or initializeReader() hasn't been called yet.
            bridge.e('loadPosition(' + chapterIndex + ', ' + readingPosition + ', ' + requestId +
                '): Volume ' + volume.id + ' has no chapters');
            return;
        }

        if (0 <= chapterIndex && chapterIndex < chapterCount) {
            // If the reading position cannot be found even after trying up to 3 chapters, fall back
            // to this chapter (bug 2952517).
            var fallbackChapterIndex = isDef(opt_fallbackChapterIndex) ?
                    opt_fallbackChapterIndex : chapterIndex;
            // Chapter index in range.  Find the chapter containing the reading position, transform
            // it into a device page (i.e. a chapterIndex/pageIndex pair), and call loadPage.
            // Sometimes reading positions aren't found; in that case, don't waste time and quit
            // searching after at most 3 chapters.
            var maxChapterIndex = Math.min(fallbackChapterIndex + 3, chapterCount);
            for (var i = chapterIndex; i < maxChapterIndex; i++) {
                var state = getChapterState_(i);
                if (state != ChapterState.READY) {
                    // Only log non-READY states to cut down on log spam.
                    var stateDescription = getChapterStateAsString_(state);
                    bridge.d('loadPosition(' + chapterIndex + ', ' + readingPosition + ', ' +
                        requestId + '): Chapter ' + i + ' is ' + stateDescription);
                }
                switch (state) {
                    case ChapterState.NOT_LOADED:
                        // The chapter hasn't started loading yet, nor has it been scheduled to be
                        // loaded.  Schedule a foreground load, and add a callback to navigate to
                        // the reading position when done.
                        setChapterState_(i, ChapterState.SCHEDULED);
                        scheduleTask(bind(loadChapter_, i, /* opt_background */ false), Delay.NONE);
                        // Fall through to display the spinner and set the callback.

                    case ChapterState.SCHEDULED:
                    case ChapterState.LOADING:
                        // The chapter is already being loaded, but the user wants it NOW, so we
                        // have to show the spinner.  Just add a new callback, replacing any
                        // existing callback (which could happen if a user uses the scrubber to
                        // navigate while a chapter is being loaded in the foreground).
                        bridge.onContentLoading();
                        volume.chapters[i].callback = bind(loadPosition, i, readingPosition,
                                requestId, pageOffset, fallbackChapterIndex, highlightSearch,
                                opt_nextHighlightChapterIndex);
                        // It is important to return here, as we don't want to fall through to the
                        // "position not found" error condition.
                        return;

                    case ChapterState.READY:
                        // Chapter available; check position index.
                        var chapter = volume.chapters[i];
                        if (readingPosition in chapter.idToIndex) {
                            var pageIndex =
                                    getAnchorDevicePageIndexCached_(chapter, readingPosition);
                            bridge.d('loadPosition(' + chapterIndex + ', ' + readingPosition +
                                    ', ' + requestId + '): Position found in chapter ' + i +
                                    ', on page ' + pageIndex);
                            loadPage(i, pageIndex, requestId, pageOffset, highlightSearch,
                                    opt_nextHighlightChapterIndex, readingPosition);
                            scheduleTask(function() {
                                bridge.onContentReady();
                            } , Delay.SHORT);
                            return;
                        }
                        break;

                    default:
                        bridge.e('loadPosition(' + chapterIndex + ', ' + readingPosition + ', ' +
                            requestId + '): Chapter ' + i + ' is in unexpected state ' +
                            stateDescription);
                        break;
                }
            }

            // If we get here, that means we've looked in the given chapter and up to 2 subsequent
            // chapters, and still haven't found the reading position.  See if we find the reading
            // position after truncation to the resolution of the physical page.
            if (loadTruncatedPosition_(fallbackChapterIndex, maxChapterIndex, readingPosition,
                    requestId, pageOffset)) {
                return;
            }

            // Couldn't find position even by truncating to the physical page.
            // Log an error and go to the start page of the given chapter (bug 2952517).
            bridge.e('loadPosition(' + fallbackChapterIndex + ', ' + readingPosition + ', '
                    + requestId + '):  Position not found, falling back to chapter '
                    + fallbackChapterIndex);
            loadPage(fallbackChapterIndex, 0, requestId, pageOffset);
            scheduleTask(function() {
                bridge.onContentReady();
            } , Delay.SHORT);
        } else {
            // Chapter index out of range.
            bridge.e('loadPosition(' + chapterIndex + ', ' + readingPosition + ', ' + requestId +
                '):  Chapter index out of range, volume ' + volume.id + ' has ' + chapterCount +
                    ' chapter(s)');
            bridge.onInvalidPosition(0, requestId);
            // TODO(arnaudberry): consider falling back to fallbackChapterIndex instead, if it is in
            // range--that way the error would be smaller.
            loadPage(0, 0, requestId, 0);
        }
    } else {
        // The reading position is missing or invalid.
        bridge.e('loadPosition(' + chapterIndex + ', ' + readingPosition + ', ' + requestId +
            '): Missing or invalid reading position');
    }
}

/**
 * Causes the text and position offset map to be delivered to the bridge. The
 * caller must ensure that the passage is loaded before invoking this function.
 *
 * @param {number} requestId Request ID to deliver to onPassageTextReady.
 * @param {number} passageIndex The passage index.
 */
function requestPassageText(requestId, passageIndex) {
    bridge.d('requestPassageText(requestId=' + requestId + ', passageIndex=' + passageIndex + ')');
    var metadata = volume.chapters[passageIndex];
    if (isDef(metadata) && metadata.state == ChapterState.READY) {
        bridge.onPassageTextReady(requestId, passageIndex, metadata.element.textContent,
            JSON.stringify(metadata.gbsIds), JSON.stringify(metadata.gbsIdOffsets));
    } else {
        bridge.e('Passage has not been paginated yet.');
        // TODO(virgilking): error callback
    }
}

/**
 * Returns the offset into a node given the element and a location relative to the web view.
 *
 * @param {Element} element The element from the chapter containing the location.
 * @param {number} x The x-coordinate of the location
 * @param {number} y The y-coordinate of the location
 * @return {Position} A Position containing the node and offset.
 */
function getPositionFromPoint(element, x, y) {
    var iter = document.createNodeIterator(element, NodeFilter.SHOW_TEXT, null, false);
    var node;
    var range = document.createRange();
    while (node = iter.nextNode()) {
        var found = false;
        var boundRect = getBoundingTextRect_(node, range);
        if (isPointInsideRect(x, y, boundRect)) {
            bridge.d('Found correct node, which has text "' + node.textContent + '"');
            if (found == true) {
                bridge.d('Found two nodes containing this location!');
            }
            found = true;
        }

        // Generate rects for each character in the node, and see which is the
        // one touched by the user.
        if (found) {
            for (var i = 0; i < node.textContent.length - 1; ++i) {
                var rects = getTextRectsForRange_(node, i, i + 1);
                for (var j = 0; j < rects.length; ++j) {
                    var rect = rects[j];
                    if (isPointInsideRect(x, y, rect)) {
                        bridge.d('Found rect for position ' + i
                                + ' containing touch point with top ' + rect.top + ', bottom '
                                + rect.bottom + ', left ' + rect.left + ', right ' + rect.right);
                        range.detach();
                        return new Position(node, i);
                    }
                }
            }
        }
    }
    range.detach();
    return null;
}

/**
 * Returns the text within a certain radius of a point, described by the node and character offset.
 *
 * @param {Node} node The node to read
 * @param {number} charIndex The offset, in characters, of the point from the start of the node.
 * @param {number} charRadius The maximum radius to pull text from, in characters.
 * @return A TextOffset with the excerpt and the offset of the first character from the start of
 *         the node.
 */
function getTextNearPoint(node, charIndex, charRadius) {
    var range = document.createRange();
    var start = charIndex > charRadius ? charIndex - charRadius : 0;
    var length = node.textContent.length;
    var end = length - charIndex > charRadius + 1 ? charIndex + charRadius + 1 : length;
    range.setStart(node, start);
    range.setEnd(node, end);
    var text = range.toString();
    range.detach();
    bridge.d('Found text, +/- ' + charRadius + ' chars, was "' + text + '"');
    return new TextOffset(text, charIndex - start);
}

/**
 * Given the translated coordinates of a touch location and grabs the text surrounding that
 * position, within a given radius (in characters). Because this function will not cross node
 * boundaries to find text, this radius is only an upper bound on the distance to search.
 *
 * TODO (colleenlee): if word is at end/start of string (most likely end/start of node), it could
 * be cut off
 *
 * @param {number} x The translated x-coordinate of the touch.
 * @param {number} y The translated y-coordinate of the touch.
 * @param {number} radius Maximum radius about the touch point from which to pull text, in
 *                        characters.
 */
function loadNearbyText(x, y, radius) {
    try {
        bridge.d('loadNearbyText() called with coords (' + x + ', ' + y + '), radius ' + radius);
        x = javaCoordinateToJS(x);
        y = javaCoordinateToJS(y);
        if (system.drawElementRectanglesON) {
            var rect = new Rect(x - 5, y - 5, x + 5, y + 5);
            drawOutline(rect, "red", 1);
            bridge.onDocumentChanged();
        }

        // Find current page, chapter.
        var chapterFound = -1;
        for (var i = 0, chapter; chapter = volume.chapters[i]; i++) {
            if (chapter.containsYCoord(y)) {
                chapterFound = i;
                break;
            }
        }

        if (chapterFound == -1) {
            bridge.e('Could not find chapter');
            return;
        }

        var position = getPositionFromPoint(chapter.element, x, y);
        if (position) {
            var excerpt = getTextNearPoint(position.node, position.offset, radius);
            bridge.onNearbyTextLoaded(excerpt.text, excerpt.offset);
        }

    } catch  (e) {
        bridge.e('Problem during loadNearbyText(): ' + e);
    }
}

/**
 * Stores a node and character offset within that node.
 *
 * @constructor
 */
function Position(node, offset) {
    this.node = node;
    this.offset = offset;
}

/**
 * Returns a Position corresponding to the given offset in the given element.
 */
function findPosition(element, offset) {
    var iter = document.createNodeIterator(element, NodeFilter.SHOW_TEXT, null, false);
    var skippedCharacters = 0;
    while (node = iter.nextNode()) {
        var text = node.textContent;
        var length = text.length;
        if (offset <= skippedCharacters + length) {
            bridge.d('Found position in node ' + node + ' at offset ' +
                (offset - skippedCharacters));
            return new Position(node, offset - skippedCharacters);
        }
        skippedCharacters += length;
    }
    bridge.d('Failed to find offset ' + offset + ' in element ' + element);
    return null;
}

/**
 * Returns the bounding rect for the given node.
 *
 * @param {Node} node The node. Must be a text node.
 * @param {Range} range A range object to use; this range will be set to span the node.
 */
function getBoundingTextRect_(node, range) {
    range.setStart(node, 0);
    range.setEnd(node, node.textContent.length);
    var zoom = getZoomForTextFromPrefs_();
    var result = getZoomedBoundingClientRect(range, zoom);
    return result;
}

/**
 * Returns the client rects for the text of the node in the specified range.
 *
 * @param node The node. Must be a text node.
 * @param startOffset The start offset of the range relative to the first
 *            character in the node's content.
 * @param endOffset The end offset of the range relative to the first
 *            character in the node's content.
 */
function getPartialTextRects_(node, startOffset, endOffset) {
    var range = document.createRange();
    range.setStart(node, startOffset);
    range.setEnd(node, endOffset);
    var zoom = getZoomForTextFromPrefs_();
    var result = getZoomedClientRects(range, zoom);
    range.detach();
    return result;
}

/**
 * Returns the client rects for the text of the node and its children in the
 * specified range.
 */
function getTextRectsForRange_(node, startOffset, endOffset) {
    var root = node;
    var rangeStartOffsetInRoot = startOffset;
    var rangeEndOffsetInRoot = endOffset;
    var result = [];

    // A simpler algorithm is to find (node, offset) pairs for the start and
    // end of the range, create a range object, and return the client rects
    // of that range, but in that case the result sometimes includes some large
    // element bounding boxes in addition to the text run rects which we're
    // interested in. The following algorithm only examines text nodes so the
    // result should only included text run bounds.
    var iter = document.createNodeIterator(root, NodeFilter.SHOW_TEXT, null, false);
    var skippedCharacters = 0;
    while (child = iter.nextNode()) {
        var text = child.nodeValue;
        var length = text.length;
        var childStartOffsetInRoot = skippedCharacters;
        var childEndOffsetInRoot = skippedCharacters + length;
        if (rangeStartOffsetInRoot <= childEndOffsetInRoot &&
                        rangeEndOffsetInRoot >= childStartOffsetInRoot) {
            // This node overlaps the specified text range.
            var rangeStartOffsetInChild = rangeStartOffsetInRoot - skippedCharacters;
            var rangeStartOffsetInChild = clamp(rangeStartOffsetInChild, 0, length);
            var rangeEndOffsetInChild = rangeEndOffsetInRoot - skippedCharacters;
            var rangeEndOffsetInChild = clamp(rangeEndOffsetInChild, 0, length);
            var childRects = getPartialTextRects_(child, rangeStartOffsetInChild,
                rangeEndOffsetInChild);
            var childRectsLength = childRects.length;
            for (var i = 0; i < childRectsLength; i++) {
                result.push(childRects[i]);
            }
        } else if (childStartOffsetInRoot > rangeEndOffsetInRoot) {
            // This child is beyond the end of the range; escape from the loop.
            break;
        }
        skippedCharacters += length;
    }
    return result;
}

/**
 * Causes a list of rectangles corresponding to the bounds of the given text to
 * be delived to the bridge. The caller must ensure that the passage is loaded
 * before invoking this function. If the passage is not paginated yet, or one of
 * both of the offsets are out of bounds, delivers null to the bridge.
 *
 * TODO(virgilking): use reading-position-relative offsets to enable a shorter
 * tree traversal to find range endpoints.
 *
 * @param passageIndex The passage containing the text. Must be correct, not
 *            just a lower bound.
 * @param position unused.
 * @param startOffset Character offset from the start of the passage to the
 *            start of the range.
 * @param endOffset Character offset from the start of the passage to the end of
 *            the range.
 */
function loadRangeBounds(passageIndex, position, startOffset, endOffset, requestId) {
    var passage = volume.chapters[passageIndex];
    var result;
    if (isDef(passage) && passage.state == ChapterState.READY) {
        bridge.d('Loading client rects for passage ' + passageIndex + ' characters ' +
            startOffset + ',' + endOffset);
        var element = passage.element;
        var rects = getTextRectsForRange_(element, startOffset, endOffset);
        var rectCount = rects.length;
        var rectPoints = [];
        for (var i = 0; i < rectCount; i++) {
            var rect = rects[i];
            rectPoints.push(jsCoordinateToJava(rect.left));
            rectPoints.push(jsCoordinateToJava(rect.top));
            rectPoints.push(jsCoordinateToJava(rect.right));
            rectPoints.push(jsCoordinateToJava(rect.bottom));
        }
        result = JSON.stringify(rectPoints);
    } else {
        bridge.e('Bounds requested for text in passage ' + passageIndex +
            ' but it hasn\'t been paginated yet.');
        result = null;
    }
    bridge.onLoadedRangeBounds(requestId, result);
}

/**
 * Returns true if it is able to move to the reading position, rounded down to
 * the nearest physical page. There should be one "bare" page tag such as
 * "GBS.PA42" per physical page. Assumes all chapters in the range are ready.
 *
 * @param {number} minChapterIndex Inclusive minimimum.
 * @param {number} maxChapterIndex Exclusive maximum.
 * @param {string} readingPosition The full-resolution reading position.
 * @param {number} requestId An arbitrary value provided by the caller which
 *            should be passed back in {@link bridge.onPageLoaded}.
 * @param {number} pageOffset Number of device pages to offset from the
 *            requested position before loading.
 * @return {boolean} Whether it finds a match.
 * @private
 */
function loadTruncatedPosition_(minChapterIndex, maxChapterIndex, readingPosition, requestId,
        pageOffset) {
    bridge.d('loadTruncatedPosition(' + minChapterIndex + ', ' + maxChapterIndex
            + ', ' + readingPosition + ', ' + requestId + ', ' + pageOffset + ')');
    var words = readingPosition.split('.');
    if (words[1]) {
        var barePagePosition = words[0] + '.' + words[1];
        for (var i = minChapterIndex; i < maxChapterIndex; i++) {
            var chapter = volume.chapters[i];
            if (barePagePosition in chapter.idToIndex) {
                var pageIndex = getAnchorDevicePageIndexCached_(chapter, barePagePosition);
                bridge.d('loadTruncatedPosition_(' + minChapterIndex + ', ' + readingPosition +
                        ', ' + requestId + '): Rounded down to position ' +
                        barePagePosition + ', found in chapter ' + i +
                        ', on page ' + pageIndex);
                loadPage(i, pageIndex, requestId, pageOffset,
                        HighlightSearch.NONE, undefined, barePagePosition);
                scheduleTask(function() {
                    bridge.onContentReady();
                }, Delay.SHORT);
                return true;
            }
        }
    }
    return false;
}


/**
 * Loads sample text into the reader.
 *
 * @param {string} sampleText Sample text to load.
 */
function setPreviewContent(sampleText) {
    $('container').innerHTML = '<div id="content">' + sampleText + '</div>';
}


/*
 * Private helper functions.  Don't call these directly; use the public API instead.
 */


/**
 * The selectors to use when creating rules intended to override publisher CSS settings.
 */
var CSS_OVERRIDE_SELECTORS = 'address,blockquote,del,div,dl,fieldset,form,h1,h2,h3,h4,h5,h6,hr,ins'
        + ',noscript,ol,p,pre,script,table,ul,code,span';


/**
 * Applies reader preference settings to the viewport and the content element.
 * Note: does not restore the previous reading position; caller is responsible
 * for issuing a subsequent request to go to that position again.
 *
 * @private
 */
function applyPreferencesInternal_() {
    try {
        // Update viewport dimensions.
        viewport.height = system.screenHeight;
        viewport.width = system.screenWidth;
        viewport.aspectRatio = viewport.width / viewport.height;

        // Update HTML body properties.
        document.body.className = pref.isNightMode ? 'night-mode' : '';

        // Update container element properties.
        var containerElement = $('container');
        containerElement.style.height = viewport.height + 'px';
        containerElement.style.width = viewport.width + 'px';

        var headElement = getHeadElement();

        // Remove previous style elements.
        var styleElements = headElement.getElementsByTagName('style');
        // styleElements is a live NodeList, so it changes as we remove elements from the head.
        while (styleElements.length > 0) {
            headElement.removeChild(styleElements.item(0));
        }

        // There is a minimum lineHeight value under which the bounding rectangles of consecutive
        // lines of text start intersecting each other. This must be avoided or the paginator cannot
        // find page breaks. Safe values are sans/serif: 1.35, Merriweather: 1.4,
        // OFLGoudyStMTT: 1.55, Vollkorn: 1.55.
        // Note that setting a normal line-height still produces intersecting rectangles (more
        // visible with 200% text zoom).
        // The issue with the book default is that a book could use several of the supported fonts
        // so to be safe we use a minimum value of 1.55 (also used in LineHeightPreference.java).
        pref.lineHeight = Math.max(1.55, pref.lineHeight);

        // Add new style elements.
        var lineHeightStyle = createStyleElement(CSS_OVERRIDE_SELECTORS
                + ' { line-height: ' + pref.lineHeight + ' !important; }');
        headElement.appendChild(lineHeightStyle);

        if (pref.textAlign != null) {
            var textAlignStyle = createStyleElement(CSS_OVERRIDE_SELECTORS
                + ' { text-align: ' + pref.textAlign + ' !important; }');
            headElement.appendChild(textAlignStyle);
        }

        if (pref.fontFamily != null) {
            var fontFamilyStyle = createStyleElement(CSS_OVERRIDE_SELECTORS
                + ' { font-family: \'' + pref.fontFamily + '\' !important; }');
            headElement.appendChild(fontFamilyStyle);
        }

        bridge.d('Applying text preferences, zoom is: ' + getZoomForTextFromPrefs_()
            + ' fontFamily is: ' + pref.fontFamily + ' textAlign is: ' + pref.textAlign
            + ' lineHeight is: ' + pref.lineHeight);

    } catch (e) {
        bridge.e('Uncaught exception in applyPreferencesInternal_(): ' + e);
    }
}


/**
 * Caches pagination information concerning reading positions.
 * For every page, stores the index of the first reading position that appears on it.
 * For each reading position that belongs to a page, updates {@code gbsDevicePages}.
 *
 * This MUST be called AFTER pagination, and BEFORE any firstReadingPositionIndex is used.
 */
Chapter.prototype.cacheReadingPositionsPageInfo = function() {
    var pagesCount = this.pagesBounds.length;
    if (pagesCount <= 0 || this.anchorsPosY.length <= 0) {
        bridge.e('cacheReadingPositionsPageInfo returning, pagesCount: ' + pagesCount
            + ' anchorsPosY: ' + this.anchorsPosY.length);
        return;
    }

    // Sort the anchors by their y position. This is potentially helpful for tables and doesn't
    // hurt as the number of anchors is usually low (couple hundreds at most, sorted in ~1ms).
    var sortedAnchors = [];
    for (var ii = 0; ii < this.anchorsPosY.length; ii++) {
        sortedAnchors.push(new Pair(this.anchorsPosY[ii], ii));
    }
    sortedAnchors.sort(comparePairsByFirstNumber);

    var currentPageIndex = 0;
    for (var jj = 0; jj < sortedAnchors.length; jj++) {
        var curY = sortedAnchors[jj].first;
        var anchorIndex = sortedAnchors[jj].second;

        // Advance the current page until it is not above curY anymore.
        while (currentPageIndex < pagesCount &&
                this.pagesBounds[currentPageIndex].isAboveYCoord(curY)) {
            currentPageIndex++;
        }
        if (currentPageIndex >= pagesCount) {
            return;
        }

        var currentPage = this.pagesBounds[currentPageIndex];
        // Note that an anchor may fall between pages, so the test is needed.
        // TODO(arnaudberry): we may want to "attach" the position to the closest page.
        if (currentPage.containsYCoord(curY)) {
            this.gbsDevicePages[anchorIndex] = currentPageIndex;

            if (!isDef(currentPage.firstReadingPositionIndex)) {
                currentPage.firstReadingPositionIndex = anchorIndex;

                if (system.drawReadingPositionsON) {
                    var drawRect = new Rect(0, curY, 150, curY + 20);
                    drawOutline(drawRect, "blue", 1, this.gbsIds[anchorIndex], "cyan");
                }
            }
        }

        if (system.drawReadingPositionsON && currentPage.firstReadingPositionIndex != anchorIndex) {
            var drawRect = new Rect(viewport.width - 150, curY, viewport.width, curY + 20);
            drawOutline(drawRect, "blue", 1, this.gbsIds[anchorIndex], "pink");
        }
    }
}


/**
 * Finds the closest reading position based on the current device page.  If the current device page
 * contains a reading position, returns it; otherwise returns a nearby position.
 * If all else fails, returns null.
 *
 * TODO(arnaudberry): split the bridge.onPageLoaded() method into "content ready" and
 * "store this position" callbacks.  That way we don't have to wait for this method to complete
 * before hiding the spinner.
 *
 * @param {number} pageIndex 0-based page index.
 * @return {?string} Reading position (null if none).
 * @private
 */
Chapter.prototype.getNearestReadingPosition = function(pageIndex) {
    if (pageIndex == 0) {
        // First page in chapter -> first anchor tag
        return this.gbsIds[0];
    }

    if (pageIndex < this.pagesBounds.length) {
        var currentPage = this.pagesBounds[pageIndex];
        if (isDef(currentPage.firstReadingPositionIndex)) {
            return this.gbsIds[currentPage.firstReadingPositionIndex];
        }
    } else {
        bridge.e("getNearestReadingPosition: pageIndex of: " + pageIndex + " but chapter only has:"
            + this.pagesBounds.length + " pages");
    }

    // Fall back to the old code as a safety net. In some rare cases (very long sentence / no text
    // at all), there could be no reading position on the page.
    // Initialize binary search
    var low = 0;
    var high = this.gbsIds.length - 1;
    var page = null;
    var id;

    while (low <= high && page != pageIndex) {
        var mid = low + Math.round((high - low) / 2);
        id = this.gbsIds[mid];
        // TODO(arnaudberry): handle case when page couldn't be determined correctly (looks like
        // right now the returned page number is 0 in these cases)
        page = getAnchorDevicePageIndexCached_(this, id);
        if (page > pageIndex) {
            high = mid - 1;
        } else {
            low = mid + 1;
        }
    }

    // TODO(arnaudberry): fine-tune to first anchor on page
    // TODO(arnaudberry): if anchor is not on the page, find nearest *previous* anchor
    return id;
};


/**
 * Loads and processes the contents of a chapter.  Loads the contents of the chapter one segment
 * at a time, then paginates and indexes the chapter asynchronously after a short delay.  When
 * finished, schedules itself to load the next chapter until it runs out of chapters.
 *
 * When a volume is first loaded, the goal is to load the chapter containing the initial reading
 * position as fast as possible.  In this mode, the UI shows a spinner, and the user can't interact
 * with the application.  As soon as the page containing the initial reading position is ready,
 * the user can start interacting with the app, and the responsiveness of the UI  becomes more
 * important than the rate at which additional content is loaded in the background. Use the
 * {@code opt_background} parameter to control whether to load a chapter in background mode.
 *
 * TODO(arnaudberry): make member function of Chapter class
 *
 * @param {number} chapterIndex 0-based chapter index.
 * @param {boolean=} opt_background Whether to run in "background mode," meaning longer pauses
 *     between tasks to allow the UI thread to remain more responsive.
 * @private
 */
function loadChapter_(chapterIndex, opt_background) {
    try {
        if (volume.chapterLoading) {
            // Each chapter is positioned after the last one that was loaded (using nextChapterTop).
            // The pagination is scheduled with a delay and then updates nextChapterTop.
            // So we cannot start loading another chapter before the pagination is done.
            // By resheduling the new chapter, we give the pagination the time it needs to be done.
            // TODO(arnaudberry) another approach would be to not preload the nextChapter and the
            // previousChapter in loadPage (and do that from java after the pagination completed).
            bridge.e('A chapter is already being loaded, delaying chapter: ' + chapterIndex);
            scheduleTask(bind(loadChapter_, chapterIndex, opt_background), Delay.SHORT);
            return;
        }

        volume.chapterLoading = true;
        // Always set the chapter state to loading (when the chapter is empty, this prevents the
        // "Invalid transition from SCHEDULED to READY" log spam.
        setChapterState_(chapterIndex, ChapterState.LOADING);

        var chapter = volume.chapters[chapterIndex];
        var segmentIds = chapter.segmentIds;

        if (segmentIds.length == 0) {
            // when chapter is empty (forbidden), pretend that it's loaded and
            // indexed with zero pages.

            // Delete any old, stale page count & reading position index data, just to be safe.
            chapter.clearIndices();

            delete chapter.element;
            chapter.pageCount = 0;

            volume.chapterLoading = false;
            setChapterState_(chapterIndex, ChapterState.READY);
            bridge.onChapterReady(chapterIndex, chapter.pageCount);

            // If a chapter callback has been registered, execute and clear it.
            var callback = chapter.callback;
            if (callback) {
                callback();
                delete chapter.callback;
            }

            return;
        }

        var stopwatch = new Stopwatch(system.profilingON);

        // Create or reset chapter element.
        var element = chapter.element;
        if (element) {
            element.innerHTML = '';
        } else {
            element = $dom('div', 'chapter');
            $('content').appendChild(element);
            chapter.element = element;
        }


        // Size and position chapter element.
        // Chapters are positioned in a single column, each chapter being appended at the bottom
        // in the order they are loaded.
        var zoom = getZoomForTextFromPrefs_();
        element.style.top = Math.ceil(volume.nextChapterTop / zoom) + 'px';
        element.style.left = 0 + 'px';

        // Set element level CSS related to preferences (eg: width, zoom)
        chapter.applyPreferences();

        // Load chapter segments one at a time.
        for (var i = 0, numSegments = segmentIds.length; i < numSegments; i++) {
            loadSegment(chapter, segmentIds[i]);
        }

        var loadTime = stopwatch.getElapsedMillis();


        // Paginate and index chapter after a delay to allow the DOM to settle and to let the UI
        // thread breathe.  Not having any delay between loading events makes the UI thread
        // unresponsive.
        scheduleTask(function() {
            // Delete any old, stale page count & reading position index data, just to be safe.
            chapter.clearIndices();

            // Highlight before pagination, as it makes DOM changes.
            chapter.highlight();

            // Find positions before pagination, since pagination can trigger DOM changes.
            chapter.findPositions();

            // Find anchor tags and number of pages in the chapter, and highlight it.
            var stopwatch = new Stopwatch(system.profilingON);
            var paginateTimings = chapter.paginate();
            var pageBounds = chapter.getPageBoundsForJava();
            var paginateTime = stopwatch.getElapsedMillis();

            chapter.cacheReadingPositionsPageInfo();

            // Figure out where to place the next chapter that will be loaded.
            var chapterRect = getZoomedBoundingClientRect(chapter.element, zoom);
            volume.nextChapterTop = chapterRect.bottom + system.interChapterPadding;

            if (system.profilingON) {
                var scheduleTime = stopwatch.getElapsedMillis();
                bridge.d('TIMINGS (ms) |' + volume.id + '| chapter |' + chapterIndex + '| load |' + loadTime
                    + '| paginate |' + paginateTime + '| misc |' + (scheduleTime - paginateTime)
                    + paginateTimings + '| total |' + (scheduleTime + loadTime) );
            }

            if (system.drawElementRectanglesON) {
                var rect = {
                    top:0,
                    left:0,
                    width: viewport.width,
                    height:0 };

                var rect2 = {
                    top:0,
                    left:10,
                    bottom:20,
                    right:10 + 400,
                    width:400,
                    height:20 };

                var pagesCount = chapter.pagesBounds.length;
                for (var ii = 0; ii < pagesCount; ii++) {
                    var curPage = chapter.pagesBounds[ii];
                    rect.top = curPage.top;
                    rect.height = curPage.bottom - curPage.top;
                    drawOutline(rect, "red", 1);

                    rect2.top = curPage.top + 10;
                    var firstAnchor = chapter.gbsIds[curPage.firstReadingPositionIndex];
                    drawOutline(rect2, "red", 1, "page: " + ii + " top: " + curPage.top
                        + " bottom: " + curPage.bottom + " A: " + firstAnchor, 'lime');
                }

                bridge.d('Paginated segment index : ' + chapterIndex + ' pages: ' + pageBounds);
            }

            // Notify the activity that the chapter has been fully loaded, paginated, and indexed.
            volume.chapterLoading = false;
            setChapterState_(chapterIndex, ChapterState.READY);
            bridge.onChapterReady(chapterIndex, pageBounds);

            // If the chapter callback has been registered, execute and clear it.
            var callback = chapter.callback;
            if (callback) {
                callback();
                delete chapter.callback;
            }
        }, Delay.SHORT);
    } catch (e) {
        bridge.e('Uncaught exception in loadChapter_(): ' + e);
    }
}


/**
 * Processes images in the parent element.  Replaces raw image source URLs with resource IDs, and
 * ensures that all images fit into the viewport.
 *
 * @param {Node} element Parent element.
 * @private
 */
function processImageElements_(element, retargetURLs) {
    var textZoom = getZoomForTextFromPrefs_();
    var imageElements = element.getElementsByTagName('IMG');
    var MATCH_SRC = /src=["']([^"']+)["']/mi;
    for (var i = 0, imageElement; imageElement = imageElements[i]; i++) {
        // Extract image src and handle poor remote escaping.  We're extracting from outerHTML,
        // since src is undefined without a base href, and the current opaque token generation
        // depends on untouched src strings.
        var targetUrl = MATCH_SRC.exec(imageElement.outerHTML)[1];
        if (retargetURLs && targetUrl) {
            // Unescape double-escaped ampersands.
            targetUrl = targetUrl.replace(/&amp;/g, "&");
            // Convert the URL into an opaque resource ID.
            var resId = btoa(targetUrl);
            resId = resId.replace(/\+/g, '-').replace(/\//g, '_');
            imageElement.src = buildResourceContentUri(volume.account, volume.id, resId);
            // TODO(attila):  Here's where we could control the order in which images are loaded.
        }

        // Invert the zoom applied at the body level since it is only supposed to change the text.
        imageElement.style.zoom = 1.0 / textZoom;

        // Resize image element to ensure it doesn't bleed across pages.
        if (imageElement.height && imageElement.width) {
            // The <img> tag has old-style height & width attributes; scale the image to fit.
            var height = parseFloat(imageElement.height);
            var width = parseFloat(imageElement.width);
            // Resize images to 1 pixel less than the viewport to prevent rounding errors in
            // webview that can deliver text rectangles one pixel larger.
            var extraMargin = 1;
            if (height > viewport.height - extraMargin ||
                    width > viewport.width - extraMargin) {
                var imageAspectRatio = width / height;
                if (imageAspectRatio < viewport.aspectRatio) {
                    // Fit height.
                    height = viewport.height - extraMargin;
                    width = Math.floor(height * imageAspectRatio);
                } else {
                    // Fit width.
                    width = viewport.width - extraMargin;
                    height = Math.floor(width / imageAspectRatio);
                }

                imageElement.height = height;
                imageElement.width = width;

                if (imageElement.height != height || imageElement.width != width) {
                    // some inline CSS can make the previous assignments fail
                    imageElement.style.maxHeight = height + 'px';
                    imageElement.style.maxWidth = width + 'px';
                }
            }
        } else {
            // The <img> tag has no height or width information; this is the best we can do.
            imageElement.style.maxHeight = viewport.height + 'px';
            imageElement.style.maxWidth = viewport.width + 'px';
        }
    }
}

/**
 * Constrains wide tables to the viewport's width.
 * On tables that would overflow the page width, set the layout to fixed and the width to 100%.
 * Without this, tables consider the width of the page a simple hint that can be ignored.
 */
function processTableElements_(element) {
    var tableElements = element.getElementsByTagName('table');
    for (var ii = 0; ii < tableElements.length; ii++) {
        var table = tableElements[ii];
        var tableBounds = getZoomedBoundingClientRect(table, getZoomForTextFromPrefs_());

        if (tableBounds.width > viewport.width) {
            table.style.width = '100% !important';
            table.style.tableLayout = 'fixed !important';
        }
    }
}
/**
 * Inserts a SPAN element above the node.
 */
function insertSpanAbove_(node) {
    var parent = node.parentNode;
    var span = document.createElement('span');
    parent.replaceChild(span, node);
    span.appendChild(node);
}

/**
 * Inserts a SPAN element above each non-blank text node.  This ensures that if getClientRects() is
 * run on the parents of the text node, it will return one rectangle for each line of text in the
 * text node.
 *
 * Text nodes containing only whitespace characters are not included, under the assumption
 * that their rectangles will not be used.
 *
 * In more detail, Element.getClientRects() has two shortcomings for measuring the lines of
 * text:
 *
 * (1) It cannot be called directly on the text node, but must be called on its parent.
 *
 * (2) It reports a single rectangle giving the bounding box for block elements, see examples at
 * https://developer.mozilla.org/en/DOM/Element.getClientRects.
 *
 * If the text node's parent has any descendants which are block elements and contain text,
 * then those descendants will contribute a single rectangle each instead of one per line of
 * text.
 *
 * To avoid this, this method inserts an inline SPAN element above every non-blank text node.  This
 * is slightly faster than more selective techniques, such as not inserting the SPAN when the
 * original parent was an inline node with no other children.
 *
 * For best performance, run this on a segment before it is attached to the document.
 *
 * @param rootNode
 */
function processTextNodes_(rootNode) {
    var iter = document.createNodeIterator(rootNode, NodeFilter.SHOW_TEXT, null, false);
    var textNodes = [];  // text nodes that need to have a parent span added

    // Find non-empty text nodes
    var node;
    while ((node = iter.nextNode())) {
        if (!is_all_ws(node)) {
            // TODO(arnaudberry): are there block elements we wouldn't want to split?
            textNodes.push(node);
        }
    }
    iter.detach();

    // Insert spans above the text nodes whose parent is not a leaf inline element.  Note if
    // tried to do this in the previous loop, we would get in an infinite loop.
    for (var i = 0; node = textNodes[i]; i++) {
        insertSpanAbove_(node);
    }
}

function setNightModeOnElementsIfNeeded_(rootNode) {
    if (!pref.isNightMode) return;

    var iter = document.createNodeIterator(rootNode, NodeFilter.SHOW_ELEMENT, null, false);

    var element;
    while ((element = iter.nextNode())) {
        element.style.color = '#fff !important';
        element.style.backgroundColor = '#000 !important';
    }
    iter.detach();
}

/**
 * Returns whether the Node is a reading position anchor node.
 */
function isReadingPositionNode_(node) {
    return node.nodeType == Node.ELEMENT_NODE && node.tagName.toLowerCase() == 'a' &&
            isReadingPosition_(node.id)
}

/**
 *  NodeFilter which accepts text nodes and anchor elements.
 */
var indexingFilter = {
    acceptNode: function(node) {
        var type = node.nodeType;
        var result;
        if (type == Node.TEXT_NODE) {
            result = NodeFilter.FILTER_ACCEPT;
        } else if (isReadingPositionNode_(node)) {
            result = NodeFilter.FILTER_ACCEPT;
        } else {
            result = NodeFilter.FILTER_SKIP;
        }
        return result;
    }
};

/**
 * Finds reading position anchors in the chapter and records their character
 * offsets.
 * NOTE: this function also affects the DOM to make sure valid rectangles are returned for the
 * anchors. It must therefore be called before paginating a chapter.
 */
Chapter.prototype.findPositions = function() {
    var chapterGbsIds = [];
    var chapterGbsIdToIndex = {};
    var chapterGbsIdOffsets = [];
    var anchors = [];

    var element = this.element;
    var iter = document.createNodeIterator(element, NodeFilter.SHOW_ALL, indexingFilter, false);

    var anchorIndex = 0;
    var charOffset = 0;
    var node;
    while (node = iter.nextNode()) {
        var type = node.nodeType;
        if (type == Node.TEXT_NODE) {
            charOffset += node.textContent.length;
        } else if (isReadingPositionNode_(node)) {
            var id = node.id;
            chapterGbsIds[anchorIndex] = id;
            chapterGbsIdToIndex[id] = anchorIndex;
            chapterGbsIdOffsets.push(charOffset);
            anchors.push(node);
            anchorIndex++;
        } else {
            // The node filter doesn't seem to work on some versions of Android,
            // and logs are slow, so don't log here.
            // bridge.e('Unexpected node ' + node);
        }
    }

    var context = getZoomedBoundingClientRect(element, getZoomForTextFromPrefs_());
    var anchorsPosY = getAnchorsY_(this, element, context, anchors);

    this.setIndices(chapterGbsIds, chapterGbsIdToIndex, chapterGbsIdOffsets, anchorsPosY);

    bridge.d('Found ' + chapterGbsIds.length + ' reading positions in chapter '
            + this.index);
};


/**
 * Returns the device page index for a GBS anchor tag, using a cached result if available.
 *
 * @param {Chapter} chapter used to find the chapter's coordinates
 * @param {String} id of the anchor tag
 */
function getAnchorDevicePageIndexCached_(chapter, id) {
    var index = chapter.idToIndex[id];
    var page = chapter.gbsDevicePages[index];
    if (page) {
        return page;
    }

    page = chapter.getDevicePageIndexForY_(chapter.anchorsPosY[index]);
    chapter.gbsDevicePages[index] = page;
    return page;
}

/**
 * Returns the vertical position of each anchor in the given list, after temporarily unhiding
 * any hidden ancestor tags.
 * This step MUST take place before pagination (bug 5498566) as re-hiding doesn't always return
 * the following elements to their initial position.
 *
 * @param {Chapter} chapter the chapter
 * @param {Element} element the chapter element
 * @param {Rect} context The bounding rectangle of the chapter element.
 * @param {Array.<Element>} anchors List of anchor elements being measured
 * @private
 */
function getAnchorsY_(chapter, element, context, anchors) {

    var anchorsY = [];
    for (aa = 0; anchor = anchors[aa]; aa++) {
        // Bug 2969596: Some reading position anchors are located within hidden parent
        // elements.  Unfortunately, document.defaultView.getComputedStyle(element, null)
        // returns 'inline' for these anchors, even if their parent element is hidden.
        // This is a real mess.  There is basically no way to handle the case where the
        // parent is hidden via CSS, but at least we can try to handle the case where the
        // parent is hidden via an explicit CSS style, like style="display:none;".  From
        // cursory investigation of actual volume contents, this seems to cover the common
        // case.

        // Find all nodes along the element's ancestor chain that are hidden, up to but not
        // including the positioning context element (which is the chapter element that we
        // created, and which is never hidden).
        var hiddenNodes = [];
        var node = anchor;
        do {
            if (node == null) {
                // This should not happen anymore as we're now iterating over the child nodes of
                // the chapter element in order to build the anchors list.
                bridge.e('Null node while unhiding the parents of anchor: ' + anchor.id);
                break;
            }

            // This only works for inline CSS, not for named styles.  Unfortunately, that's
            // the best we can do.
            if (node.style && node.style.display == 'none') {
                hiddenNodes.push(node);
            } else if (node.style && node.style.display && node.style.display != '') {
                // See if there is hiding that we are missing
                bridge.e('Unexpected node.style.display ' + node.style.display
                         + ' for node ' + node);
            }
        } while ((node = node.parentNode) != element);

        // Un-hide any hidden nodes along the ancestor chain.
        var j, hiddenNode;
        for (j = 0; hiddenNode = hiddenNodes[j]; j++) {
            // By default, the reading positions are empty inline blocks, and getBoundingClientRect
            // often returns {0,0,0,0} rectangles (the ICS browser is probably deciding not to
            // render them). Using inline-block for anchors forces them to take up space in the
            // rendering hierarchy and the returned rectangles are valid. This is a workaround for
            // bug 4986300.
            hiddenNode.style.display = (hiddenNode == anchor) ? 'inline-block !important' : '';
        }

        // Measure the bounding box of the reading position anchor.  Note that this
        // could still give us nonsensical results, but at least we tried.
        var posY = chapter.getElementPosY_(anchor, context);
        anchorsY.push(posY);

        // Re-hide any previously hidden nodes along the ancestor chain.
        for (j = 0; hiddenNode = hiddenNodes[j]; j++) {
            hiddenNode.style.display = 'none';
        }

        // Keep the reading positions anchors hidden to prevent them from sometimes showing up
        // in the text (bug: 5139700).
        // Note that only one anchor (and its parents) should be made visible at the same time
        // or the accumulated offsets would make the resulting positions unreliable.
        anchor.style.display = 'none !important';
    }

    return anchorsY;
}


/**
 * Returns the vertical position of an element, or undefined if it cannot be determined.
 * Do NOT call this on hidden elements.
 *
 * @param {Chapter} chapter the chapter
 * @param {Rect} context The bounding rectangle of the chapter element.
 * @private
 */
Chapter.prototype.getElementPosY_ = function(element, context) {
    // The unhiding code is necessary on both phone and tablet: hidden elements have
    // a position of (0,0) and therefore we can't determine their page.
    if ((element.style && element.style.display == 'none') ||
            document.defaultView.getComputedStyle(element, null).display == 'none') {
        bridge.e('Element hidden even after unhiding');
    }

    var rect = getZoomedBoundingClientRect(element, getZoomForTextFromPrefs_());
    var left = rect.left - context.left;
    var top = rect.top - context.top;

    // If either left or top are negative, the element's bounding box couldn't be measured.
    if (left < 0 || top < 0) {
        bridge.e('getElementPosY_: bad rect: ' + rect.left + ', ' + rect.top
                + '; context: ' + context.left + ', ' + context.top);
        return undefined;
    }

    return rect.top;
};

/**
 * Returns the 0-based index of the device page on which the element is located.
 * Do NOT call this on hidden elements.
 *
 * @param {Element} element Element whose position is to be measured.
 * @param {Object} context Positioning context.
 * @return {number} 0-based device page index.
 * @private
 */
Chapter.prototype.getDevicePageIndexForNode_ = function(element, context) {
    // The unhiding code is necessary on both phone and tablet: hidden elements have
    // a position of (0,0) and therefore we can't determine their page.
    if ((element.style && element.style.display == 'none') ||
            document.defaultView.getComputedStyle(element, null).display == 'none') {
        bridge.e('Element hidden even after unhiding');
    }

    var rect = getZoomedBoundingClientRect(element, getZoomForTextFromPrefs_());
    bridge.d('getDevicePageIndexForNode_: zoomed rect is :' +
        rect.left + ',' + rect.top + ',' + rect.right + ',' + rect.bottom);
    if (this.pagesBounds.length <= 0) {
        this.logCannotFindElement(rect, context);
        return 0;
    }

    var left = rect.left - context.left;
    var top = rect.top - context.top;

    // If either left or top are negative, the element's bounding box couldn't be measured.
    if (left < 0 || top < 0) {
        bridge.e('getDevicePageIndexForNode_: bad rect: ' + rect.left + ', ' + rect.top
                + '; context: ' + context.left + ', ' + context.top);
        return 0;
    }

    return this.getDevicePageIndexForY_(rect.top);
};


/**
 * Returns the 0-based index of the device page on which the given vertical position is located.
 *
 * @param {Element} posY Vertical position.
 * @return {number} 0-based device page index.
 * @private
 */
Chapter.prototype.getDevicePageIndexForY_ = function(posY) {
    if (!isDef(posY)) {
        return 0;
    }

    bridge.d('getDevicePageIndexForY_(posY=' + posY + ')');

    // todo(arnaudberry) binary search (or interval tree)
    var pageCount = this.pagesBounds.length;
    for (var pageIndex = 0; pageIndex < pageCount; pageIndex++) {
        var currentPage = this.pagesBounds[pageIndex];
        if (posY < currentPage.bottom) {
            // Use < rather than <= since in the == case the rects are flush but
            // do not overlap, so we should return the next page.
            bridge.d('returning containing page ' + pageIndex);
            return pageIndex;
        }
    }

    bridge.d('page not found, returning last page');
    return this.pagesBounds.length - 1;
};

Chapter.prototype.logCannotFindElement = function(rect, context) {
    bridge.e('Could not find element in chapter ' + this.index + " pages: "
            + this.pagesBounds.length
            + ' rect: ' + jsonRectFromRect(rect) + ' context: ' + jsonRectFromRect(context)
            + ' pages: ' + this.getPageBoundsForJava()); //todo: remove getPageBoundsForJava ?
};

/**
 * Returns whether the argument is a GBS reading position ID.
 *
 * @param {string} s String to test.
 * @return {boolean} Whether the argument is a GBS reading position ID.
 * @private
 */
function isReadingPosition_(s) {
    return s && s.indexOf && s.indexOf('GBS.') == 0;
}


/**
 * Returns the index of the next chapter to load after the current one, or -1 if there are no more
 * chapters to load.  Starts looking at the chapter immediately following {@code chapterIndex}, and
 * keeps going (wrapping around to chapter 0 if necessary) until either it finds a chapter to load,
 * or comes back around to {@code chapterIndex}, indicating that there are no more chapters to load.
 *
 * @param {number} chapterIndex Current chapter index.
 * @return {number} 0-based index of the next chapter to load (-1 if there are no more).
 * @private
 */
function getNextChapterToLoad_(chapterIndex) {
    var chapterCount = volume.chapters.length;

    for (var i = (chapterIndex + 1) % chapterCount; i != chapterIndex; i = (i + 1) % chapterCount) {
        if (getChapterState_(i) == ChapterState.NOT_LOADED) {
            // Found a chapter that hasn't been loaded (or even scheduled to be loaded) yet.
            return i;
        }
    }

    // All chapters must have been loaded or are scheduled to be loaded.
    return -1;
}


/**
 * Updates the state of the chapter to the specified new state.
 *
 * @param {number} chapterIndex 0-based chapter index.
 * @param {ChapterState} newState New chapter state.
 * @private
 */
function setChapterState_(chapterIndex, newState) {
    var currentState = getChapterState_(chapterIndex);
    if (newState != currentState + 1) {
        bridge.e('setChapterState_(' + chapterIndex + ', ' + newState + '): Invalid transition' +
                ' from ' + getChapterStateAsString_(currentState) +
                ' to ' + getChapterStateAsString_(newState));
    } else {
        bridge.d('setChapterState_(' + chapterIndex + ', ' + newState + '):' +
                ' Chapter ' + chapterIndex + ' is now ' + getChapterStateAsString_(newState));
    }
    volume.chapters[chapterIndex].state = newState;
}


/**
 * Enqueue the requested chapter to be loaded. The given callback method will be
 * triggered when load is finished. If the requested chapter is already
 * enqueued, the new callback will replace any existing callback.
 *
 * @param {number} chapterIndex 0-based chapter index.
 * @param {Function} callback Function to call when requested chapter has
 *            finished loading and indexing.
 * @private
 */
function enqueueChapterRequest_(chapterIndex, callback) {
    var state = getChapterState_(chapterIndex);
    switch (state) {
        case ChapterState.NOT_LOADED:
            // The chapter hasn't started loading yet, nor has it been scheduled to be loaded.
            // Schedule a foreground load, and add a callback to navigate to the page when done.
            setChapterState_(chapterIndex, ChapterState.SCHEDULED);
            scheduleTask(bind(loadChapter_, chapterIndex, /* opt_background */ false), Delay.NONE);
            // Fall through to display the spinner and set the callback.

        case ChapterState.SCHEDULED:
        case ChapterState.LOADING:
            // The chapter is already being loaded, but the user wants it NOW, so we have to
            // show the spinner.  Just add a new callback, replacing any existing callback
            // (which could happen if a user uses the scrubber to navigate while a chapter is
            // being loaded in the foreground).
            bridge.onContentLoading();
            volume.chapters[chapterIndex].callback = callback;
            break;

        case ChapterState.READY:
            // The chapter has already been loaded, paginated, and indexed.
            callback();
            break;

        default:
            bridge.e('enqueueChapterRequest(): Chapter is in unexpected state ' +
                    getChapterStateAsString_(state));
            break;
    }
}


/**
 * Returns the current state of the chapter.
 *
 * @param {number} chapterIndex 0-based chapter index.
 * @return {ChapterState} Current chapter state.
 * @private
 */
function getChapterState_(chapterIndex) {
    return volume.chapters[chapterIndex].state;
}


/**
 * Returns a human-readable string description of the current state of the chapter (for logging).
 *
 * @param {ChapterState} state Chapter state constant.
 * @return {string} String representation of the chapter state.
 * @private
 */
function getChapterStateAsString_(state) {
    for (var key in ChapterState) {
        if (ChapterState[key] == state) {
            return key;
        }
    }
   return 'UNKNOWN';
}
