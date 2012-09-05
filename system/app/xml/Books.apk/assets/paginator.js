// Copyright 2011 Google Inc.  All Rights Reserved.


/**
 * Stores the pagination result (currently only the array of page boundaries)
 *
 * @constructor
 */
function PaginatorResult() {
    /**
     * List of page boundaries.
     *
     * @type {Array.<PageBounds>}
     */
    this.pagesBounds = [];
}


// sort by top so that we know that the following rectangle will be drawn after the last top.
function compareRects(a,b) {
    return a.top - b.top;
}


/**
 * The class that calculates the pagination of a chapter.
 * Design doc at this url: https://docs.google.com/a/google.com/document/d/
 *     1yUPUP16bVa9cCXwGVJrKnS99bbBPuFAW4Ll-tehJfBQ/edit?hl=en&authkey=CMWxkfIL
 *
 * @param {Chapter} chapter The chapter to paginate
 * @param {number} textZoom zoom factor applied in order to scale text.
 * @constructor
 */
function Paginator(chapter, textZoom) {

    /**
     * The chapter being paginated.
     *
     * @type {Chapter}
     */
    this.chapter = chapter;

    /**
     * Zoom factor applied to scale text.
     * If a new value is desired, a new Paginator must be created.
     *
     * @type {number}
     */
    this.textZoom = textZoom;

    /**
     * Bounding rectangle of the chapter element (with zoom applied).
     * @type {Object}
     */
    this.chapterBoundingRect = getZoomedBoundingClientRect(this.chapter.element, this.textZoom);

    /**
     * The result of the pagination.
     *
     * @type {PaginatorResult}
     */
    this.result = new PaginatorResult();

    /**
     * The position in the webview of the top of the page that is being calculated.
     *
     * @type {number}
     */
    this.currentTop = Math.floor(this.chapterBoundingRect.top);

    /**
     * The height of the view, ie the maximum height that can be used for a page.
     *
     * @type {number}
     */
    this.viewHeight = viewport.height;

    if (viewport.height < 0 || 10000 < viewport.height) {
        bridge.e('Viewport height is invalid' + viewport.height);
        this.viewHeight = 10000; // prevents huge GapsColumn allocations that crash the VM
    }

    /**
     * The position in the webview of the maximum possible bottom for the page being calculated.
     *
     * @type {number}
     */
    this.maxBottom = this.currentTop + this.viewHeight;

    /**
     * A helper class that makes sure the pagination is correct.
     *
     * @type {DebugContext}
     */
    this.debugContext = (system.verifyPaginationON) ? new DebugContext() : null; // slow checks

    /**
     * A helper class that stores information about the rectangles on the page that is being
     * calculated.
     *
     * @type {GapsColumn}
     */
    this.gapsColumn = new GapsColumn(2 * this.viewHeight, this.debugContext);
    this.gapsColumn.repositionAt(this.currentTop); // Start the column at the top of the chapter.
}

/**
 * Returns the list of all the rectangles to consider and the bounding rectangle of the text
 * rectangles. The bounding rectangle is returned so that long text rectangle(s) can be discarded
 * (see Paginator.prototype.paginate).
 * TODO(arnaudberry) investigate if iterating over the subelements or maybe the text nodes could
 * give us a list from which nothing needs to be discarded.
 * @private
 */
Paginator.prototype.getRects_ = function() {
    var allRects = [];

    // Add text rectangles.
    // Using a range covering the whole chapter only gives us the text rectangles as specified in:
    // http://dev.w3.org/csswg/cssom-view/#extensions-to-the-range-interface
    // TODO(arnaudberry): probably don't need boundingTextRect any more, now that we're finding
    // the text rects ourselves.  We'd need to restore it if we ever switched back to using
    // range.getClientRects()
    var boundingTextRect = this.chapterBoundingRect;
    var textRects = this.getTextRects_();

    for (var txtRectNdx = 0; txtRectNdx < textRects.length; txtRectNdx++) {
        allRects.push(textRects[txtRectNdx]);
    }

    // Add the rectangles from images
    // We apply the inverse of textZoom to images to keep their size constant, so the effective
    // zoom is 1.0.
    var imageElements = this.chapter.element.getElementsByTagName('IMG');
    for (var ii = 0; ii < imageElements.length; ii++) {
        var image = imageElements[ii];
        var imageRects = getZoomedClientRects(image, 1.0);
        for (var imgRectNdx = 0; imgRectNdx < imageRects.length; imgRectNdx++) {
            allRects.push(imageRects[imgRectNdx]);
        }
    }

    return [allRects, boundingTextRect];
};


/**
 * Returns the bounding rectangles for each box of text under the chapter element.  These rectangles
 * span no more than a single line of text, so that gaps between them are acceptable locations
 * for a page break.
 *
 * Assumes that processTextRects() has been run on the chapter.
 *
 * Text nodes containing only whitespace characters are not included, because they should not
 * prevent page breaks.
 *
 * TODO(arnaudberry): once drop support for Eclair, consider switching back to using
 * range.getClientRects() if that's faster.  Note we'd have to continue (or resume) using the
 * hacky bounding rect correction.
 */
Paginator.prototype.getTextRects_ = function() {
    var textRects = [];
    var iter = document.createNodeIterator(this.chapter.element, NodeFilter.SHOW_TEXT, null, false);

    // Find text nodes that aren't only child of an inline element
    var node;
    while ((node = iter.nextNode())) {
        if (!is_all_ws(node)) {
            var parent = node.parentNode;
            if (parent.childNodes.length > 1) {
                bridge.e('getTextRects_():  parent with ' + parent.childNodes.length
                        + ' children, did you forget to run processTextElements_()?');
            }

            var rects = getZoomedClientRects(parent, this.textZoom);
            for (var iRect = 0, rect; rect = rects[iRect]; iRect++) {
                textRects.push(rect);
            }
        }
    }
    iter.detach();

    return textRects;
};


/**
 * Calculates the page bounds
 *
 * @return {PaginatorResult} the result of the pagination (page bounds)
 */
Paginator.prototype.paginate = function() {
    var stopwatch = new Stopwatch(system.profilingON);
    var getRectsResult = this.getRects_();
    var allRects = getRectsResult[0];
    var boundingTextRect = getRectsResult[1];

    var getRectsTime = stopwatch.getElapsedMillis();

    allRects.sort(compareRects);

    if (system.profilingON) {
        var sortTime = stopwatch.getElapsedMillis() - getRectsTime;
        this.result.timing = "| getrects |" + getRectsTime + "| sort |" + sortTime;
    }

    var mayNeedAnotherBreak = true;

    for (var ii = 0; ii < allRects.length; ii++) {
        var rect = allRects[ii];

        if ( rect.height > this.viewHeight ) {
            // The rectangle is too tall to be painted (the column is only two pages tall).
            // todo(arnaudberry) allow any rect to be added.
            // Ignore that rect for now but log this issue when the rectangle is not likely to be
            // the bounding rectangle of the top element (strict equality produces too many
            // false warnings).
            // todo(arnaudberry) investigate if iterating over the subelements or maybe the text
            // nodes could give us a list from which nothing needs to be discarded.
            // The width is ignored because of some words that can go beyond the page width
            // (b: 4311699).
            var rectLikeBoundingTextRect = ((rect.top == boundingTextRect.top) &&
                    (Math.abs(rect.left - boundingTextRect.left) <= 1) &&
                    (rect.bottom == boundingTextRect.bottom));

            if (!rectLikeBoundingTextRect) {
                bridge.e('chapter.paginate() ignoring big rect: ' + jsonRectFromRect(rect));

                if (system.drawElementRectanglesON) {
                    drawOutline(rect, "orange", 2);
                }
            }
        } else if (rect.top < this.maxBottom) {
            // The rectangle starts before the maximum bottom of the page.
            this.gapsColumn.markGapsInRect(rect);
        } else {
            // The rectangle starts after the maximum bottom of the page => need to make a cut,
            // but in some cases, we need to cut two pages.
            while (rect.top >= this.maxBottom) {
                mayNeedAnotherBreak = this.makePageBreak_(rect);
            }

            this.gapsColumn.markGapsInRect(rect);
        }
    }

    while (mayNeedAnotherBreak) {
        mayNeedAnotherBreak = this.makePageBreak_(null);
    }

    // Do some polishing.
    var chapterBottom = Math.floor(this.chapterBoundingRect.bottom);
    if (this.currentTop < chapterBottom) {
        // This should be rare but could happen if text ended near the bottom of the last page (or
        // if there is no text) but was followed by some visible elements (eg lines, filled shapes).
        // So we just add some pages to make sure the chapter rect is covered.
        bridge.d('chapter.paginate() currentTop: ' + this.currentTop + ', bottom' + chapterBottom);
        this.addPagesUptoY_(chapterBottom);
    } else {
        var currentPagesCount = this.result.pagesBounds.length;
        if ((currentPagesCount <= 0) ||
            (chapterBottom < this.result.pagesBounds[currentPagesCount - 1].top)) {
            // Should not happen (the last page starts after the bottom of the chapter).
            bridge.e('chapter.paginate() something is very wrong with this chapter rect: '
                + jsonRectFromRect(rect));
        } else {
            // Since chapters are positioned vertically one after the other, set the bottom of the
            // last page to the bottom of the chapter's rect (or that page would draw what's coming
            // on the next one).
            this.result.pagesBounds[currentPagesCount - 1].bottom = chapterBottom;
        }
    }

    if (this.debugContext) {
        this.debugContext.validateBreaks(this.result.pagesBounds);
    }

    return this.result;
};

/**
 * Creates new pages until they reach the given point.
 *
 * @param {number} yToReach the point that should be covered by the last page.
 * @private
 */
Paginator.prototype.addPagesUptoY_ = function(yToReach) {
    while (this.currentTop < yToReach) {
        var bottomBreak = (yToReach > this.maxBottom) ? this.maxBottom : yToReach;
        this.result.pagesBounds.push(new PageBounds(this.currentTop, bottomBreak));
        this.gapsColumn.repositionAt(bottomBreak);
        this.currentTop = bottomBreak;
        this.maxBottom = this.currentTop + this.viewHeight;
    }
};

/**
 * Creates a new page and updates the current state
 *
 * @param {ClientRect} rect the rectangle that triggers the page break (can be null)
 * @return {boolean} Whether a new break might be needed at the end of the process.
 * @private
 */
Paginator.prototype.makePageBreak_ = function(rect) {
    var mayNeedAnotherBreak = true;
    // maxBottom is the maximum possible bottom for the page being calculated, but it is actually
    // not on the page (height = bottom - top). Yet the gap selected for the break needs to be on
    // the page or the last line of pixels (eg: the bottom of the letter g) would be cut.
    // => start searching from maxBottom - 1.
    var maxValidBreak = this.maxBottom - 1;
    var pageBottom = this.gapsColumn.searchBackwards(maxValidBreak, GapsValue.ZERO,
            GapsSearchMode.EQUAL);
    if (pageBottom < 0) {
        // All the gaps are covered by at least a rectangle. For now, try to find the point where
        // two rectangles overlap. This heuristic mostly thinks about the case where text rectangles
        // overlap by a pixel or two : cutting where they overlap preserves the core of the text.
        // todo(arnaudberry) finding the center of the an overlapping zone could make a better cut.
        // we could also return overlapping pages...
        // In any case, we flag the difficulty for a visual inspection.
        pageBottom = this.gapsColumn.searchBackwards(maxValidBreak, 2, GapsSearchMode.GREATER_EQ);
        bridge.e('Could not find a true break. nextPageIndex: ' + this.result.pagesBounds.length);
    }
    if (pageBottom < 0) {
        // this is not good, do a hard cut at the bottom.
        bridge.e('Could not find where to cut. nextPageIndex: ' + this.result.pagesBounds.length);
        pageBottom = maxValidBreak;
    }
    pageBottom += 1;

    // since the pageBottom could have moved up, check for non empty gaps that follow it.
    // anything found will be before the current rect top because of the ordering by tops
    var nextTop = this.gapsColumn.searchForward(pageBottom, GapsValue.ONE,
            GapsSearchMode.GREATER_EQ);
    if (nextTop < 0) {
        // no rects were drawn that start after the page break => use the next one.
        if (rect != null) {
            nextTop = Math.floor(rect.top);
        } else {
            mayNeedAnotherBreak = false;
            nextTop = pageBottom;
        }
    }

    // Make the cut and update.
    this.result.pagesBounds.push(new PageBounds(this.currentTop, pageBottom));
    this.gapsColumn.repositionAt(nextTop);
    this.currentTop = nextTop;
    this.maxBottom = this.currentTop + this.viewHeight;

    return mayNeedAnotherBreak;
};


/**
 * A helper class to make sure that no pixel is left behind (ie all the pixels of considered
 * rectangles end up on at least a page).
 *
 * @constructor
 */
function DebugContext() {
    this.pixels = [];
}

/**
 * Store the pixels of a rectangle into the context
 */
DebugContext.prototype.paintRect = function(rect) {
    var top = Math.floor(rect.top);
    var bottom = Math.floor(rect.bottom);

    if (top < 0 || bottom < top) {
        bridge.e('DebugContext::paintRect invalid rect top: ' + top + ' bottom: ' + bottom);
    } else {
        for (var ii = top; ii < bottom; ii++) {
            this.pixels[ii] = 1;
        }
    }
};


/**
 * Search backwards from the given start, on which page the given value (pixel) is located.
 * @return the index of the page, -1 when not found
 */
DebugContext.prototype.findPageBackwards = function(start, value, pages) {
    for (var ii = start; ii >= 0; ii--) {
        var currentPage = pages[ii];
        if ((currentPage.top <= value) && (value <= currentPage.bottom)) {
            return ii;
        }
    }
    return -1;
};


/**
 * Search forward from the given start page, on which page the given value (pixel) is located.
 * @return the index of the page, -1 when not found
 */
DebugContext.prototype.findPageForward = function(start, value, pages) {
    for (var ii = start; ii < pages.length; ii++) {
        var currentPage = pages[ii];
        if ((currentPage.top <= value) && (value <= currentPage.bottom)) {
            return ii;
        }
    }
    return -1;
};


/**
 * Make sure that all the pixels recorded in the context belong to a page
 */
DebugContext.prototype.validateBreaks = function(pages) {
    var currentPageIndex = 0;
    var orphans = [];
    for (var ii = 0; ii < this.pixels.length; ii++) {
        if (this.pixels[ii] == 1) {
            var nextPageIndex = -1;
            if (ii < pages[currentPageIndex].top) {
                nextPageIndex = this.findPageBackwards(currentPageIndex - 1, ii, pages);
            } else if (ii > pages[currentPageIndex].bottom) {
                nextPageIndex = this.findPageForward(currentPageIndex + 1, ii, pages);
            } else {
                nextPageIndex = currentPageIndex;
            }

            if (nextPageIndex < 0) {
                orphans.push(ii);
            } else {
                currentPageIndex = nextPageIndex;
            }
        }
    }

    if (orphans.length > 0) {
        bridge.e('DebugContext::validateBreaks found orphan pixels: ' + orphans);
    } else {
        bridge.d('DebugContext::validateBreaks chapter looks valid');
    }
};


/**
 * An array of values representing the gaps between scan lines on a book's page.
 * Each value counts the number of rectangles spanning the gap, with a count of zero indicating a
 * possible location to insert a page break. For example, a 3 pixels tall rectangle starting in y=0
 * increments the gaps 0 and 1 (but not gap #2).
 *
 * To avoid allocating a column as tall as the complete text, the start of the column can be
 * moved forward once a page has been processed (with repositionAt).
 *
 * Notes:
 *   a) 1 pixel rectangles are treated as two pixels rectangles to simplify the code (the drawback
 *      is that this could prevent some cuts that should be possible).
 *   b) Using a column as tall as two pages has to ignore rectangles taller than a page (unless
 *      special processing is introduced).
 *   c) Switching to a different structure like an interval tree could solve these issues.
 *
 * @constructor
 */
function GapsColumn(height, debugContext) {
    this.gaps = new Array(height);
    this.setGaps_(0, this.gaps.length, GapsValue.ZERO, GapsFillMode.SET);
    this.offset = 0;
    this.debugContext = debugContext;
}

/**
 * Enum of various modes used when modifying the value attributed to a gap.
 *
 * @enum {number}
 */
var GapsFillMode = {
    // Assigns the given value to the gap.
    SET: 0,

    // Adds the given value to the current one.
    ADD: 1
};

/**
 * Enum of various modes used when searching for a value in the gaps.
 *
 * @enum {number}
 */
var GapsSearchMode = {
    // Used to find the first value == to the given value.
    EQUAL: 0,

    // Used to find the first value >= to the given value.
    GREATER_EQ: 1
};

/**
 * Interesting values that can be stored in a gap.
 * Note: this is not an enum because any number can be attributed to a gap.
 */
var GapsValue = {
    // No rectangle bridging the gap.
    ZERO: 0,

    // One rectangle bridging the gap.
    ONE: 1
};


/**
 * Mark the gaps overlapped by the given rectangle.
 */
GapsColumn.prototype.markGapsInRect = function(rect) {
    if (rect.left < -1) {
        // TODO(arnaudberry) we need to handle better cases where webview draws outside the bounds.
        // First step would be to implement the side margins in CSS and allow the occasional
        // small overflow in them.
        // Second step would be to add special zooming/scrolling of areas that overflow more.
        bridge.e('markGapsInRect : rect.left < -1');
    }
    if (rect.height > 0) { // ignore empty rectangles
        // Rectangles are actually in floating point but the gaps are integers.
        // Floor the top to make sure we don't miss a gap.
        // Floor the bottom to convert to integer (and avoid unnecessarily marking the next gap
        // if we were to use round).
        var top = Math.floor(rect.top);
        var bottom = Math.floor(rect.bottom);
        var height = bottom - top;

        // Making the gapsCount at least one is how thin rectangles are forced into the column.
        var gapsCount = Math.max(1, height - 1);
        var start = top - this.offset;
        this.setGaps_(start, gapsCount, GapsValue.ONE, GapsFillMode.ADD);
    }

    if (this.debugContext) {
        this.debugContext.paintRect(rect);
    }

    if (system.drawElementRectanglesON) {
        drawOutline(rect, "green", 1);
    }
};


/**
 * Modifies the value of some gaps using the given value and mode.
 *
 * @param {number} start index of the first gap to set.
 * @param {number} count number of gaps to set.
 * @param {number} value the value to use.
 * @param {GapsFillMode} mode how to combine value with the existing value for each gap.
 * @private
 */
GapsColumn.prototype.setGaps_ = function(start, count, value, mode) {
    if (start < 0) {
        bridge.e('setGaps_ invalid start: ' + start);
        start = 0;
    }
    var upperBound = start + count;
    if (upperBound > this.gaps.length) {
        bridge.e('setGaps_ invalid bounds start: ' + start + ' offset: ' + this.offset
                + ' count: ' + count + ' gaps.length: ' + this.gaps.length);
        upperBound = this.gaps.length;
    }
    if (mode == GapsFillMode.ADD) {
        for (var ii = start; ii < upperBound; ii++) {
            this.gaps[ii] += value;
        }
    } else if (mode == GapsFillMode.SET) {
        for (var ii = start; ii < upperBound; ii++) {
            this.gaps[ii] = value;
        }
    } else {
        bridge.e('setGaps_ invalid mode: ' + mode);
    }
};


/**
 * Moves forward the start of the column (values are moved to the beginning of the column)
 */
GapsColumn.prototype.repositionAt = function(newTop) {
    var localStart = newTop - this.offset;
    if (localStart == 0) return; // nothing to do

    if (0 < localStart && localStart < this.gaps.length) {
        for (var ii = localStart; ii < this.gaps.length; ii++) {
            this.gaps[ii - localStart] = this.gaps[ii];
            this.gaps[ii] = GapsValue.ZERO;
        }
        // erase the values after the block that was moved
        var copiedLength = this.gaps.length - localStart;
        this.setGaps_(copiedLength, this.gaps.length - copiedLength, GapsValue.ZERO,
                GapsFillMode.SET);
    } else {
        this.setGaps_(0, this.gaps.length, GapsValue.ZERO, GapsFillMode.SET);
    }

    this.offset = newTop;
};


/**
 * Searches for the given value by going backwards from the given maxHeight.
 *
 * @param {number} maxHeight index of the first gap to try.
 * @param {number} value the value to search for.
 * @param {GapsSearchMode} searchMode the search criteria (== or >=).
 */
GapsColumn.prototype.searchBackwards = function(maxHeight, value, searchMode) {
    var localStart = maxHeight - this.offset;

    if (localStart < 0 || localStart >= this.gaps.length) {
        bridge.e('findFromEnd invalid maxHeight: ' + maxHeight);
        return maxHeight;
    } else if (searchMode == GapsSearchMode.GREATER_EQ) {
        for (var ii = localStart; ii >= 0; ii--) {
            if (this.gaps[ii] >= value) {
                return (ii + this.offset);
            }
        }
    } else if (searchMode == GapsSearchMode.EQUAL) {
        for (var ii = localStart; ii >= 0; ii--) {
            if (this.gaps[ii] == value) {
                return (ii + this.offset);
            }
        }
    } else {
        bridge.e('searchBackwards invalid searchMode: ' + searchMode);
    }
    return -1;
};


/**
 * Searches for the given value by going forward from the given startHeight.
 *
 * @param {number} startHeight index of the first gap to try.
 * @param {number} value the value to search for.
 * @param {GapsSearchMode} searchMode the search criteria (== or >=).
 */

GapsColumn.prototype.searchForward = function(startHeight, value, searchMode) {
    var localStart = startHeight - this.offset;

    if (localStart < 0 || localStart >= this.gaps.length) {
        bridge.e('findFromStart invalid startHeight: ' + startHeight);
        return startHeight;
    } else if (searchMode == GapsSearchMode.GREATER_EQ) {
        for (var ii = localStart; ii < this.gaps.length; ii++) {
            if (this.gaps[ii] >= value) {
                return (ii + this.offset);
            }
        }
    } else if (searchMode == GapsSearchMode.EQUAL) {
        for (var ii = localStart; ii < this.gaps.length; ii++) {
            if (this.gaps[ii] == value) {
                return (ii + this.offset);
            }
        }
    } else {
        bridge.e('searchBackwards invalid searchMode: ' + searchMode);
    }
    return -1;
};

