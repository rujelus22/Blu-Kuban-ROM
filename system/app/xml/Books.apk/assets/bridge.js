// Copyright 2010 Google Inc.  All Rights Reserved.


/**
 * @fileoverview JavaScript-to-Java bridge methods.  This file is never loaded at runtime; these
 * declarations are here only for the benefit of IDEs which would otherwise complain, as well as
 * to document the expected type and number of parameters for bridge methods.
 *
 * <strong>Note:</strong> The contents of this file (including JsDoc comments) should be kept in
 * sync with the Java interface {@link ReaderBridge}.
 *
 * @author attila@google.com (Attila Bodis)
 */


/**
 * The JavaScript-to-Java bridge.
 *
 * @type {Object}
 */
var bridge = {
};


/**
 * Notifies the activity that the JS API is ready.  Called as soon as the HTML page implementing
 * the reader UI finishes loading, before any content has been loaded.
 */
bridge.onJsApiReady = function() {
};


/**
 * Notifies the activity that the reader has been initialized with a volume ID and chapter
 * information, and is ready to apply preferences and start reading.
 */
bridge.onReaderInitialized = function() {
};


/**
 * Notifies the activity that the most recent preference changes have been applied.
 */
bridge.onPreferencesApplied = function() {
};


/**
 * Notifies the activity that the reader is blocked while the reader is fetching content.  The
 * activity should handle this by showing a progress indicator until {@link bridge.onContentReady}
 * is called.
 */
bridge.onContentLoading = function() {
};


/**
 * A chapter has been fully loaded, paginated, and indexed.
 *
 * @param {number} chapterIndex 0-based chapter index.
 * @param {string} pageBounds top and bottom vertical position of each page (comma separated).
 */
bridge.onChapterReady = function(chapterIndex, pageBounds) {
};


/**
 * Notifies the activity that the reader has finished fetching content and is no longer blocked.
 * The activity should handle this by removing any progress indicator that may have been shown.
 */
bridge.onContentReady = function() {
};


/**
 * Delivers text and reading position character offsets for a passage.
 *
 * @param {number} chapterIndex 0-based chapter index.
 * @param {string} text The text of the chapter.
 * @param {Array.<string>} positions List of reading position names occurring
 *            in the passage.
 * @param {Array.<number>} offsets List of character offsets of reading
 *            positions parallel to 'positions'.
 */
bridge.onPassageTextReady = function(chapterIndex, text, positions, offsets) {
};


/**
 * The passage containing the requested page or position has been loaded, and
 * has the specified passage index, page index, and reading position.
 *
 * @param {number} chapterIndex 0-based chapter index.
 * @param {number} pageIndex Requested 0-based page index.
 * @param {string} readingPosition Reading position.
 * @param {number} requestId Unique id passed through goToPage or goToPosition.
 * @param {number} highlightSearch Original highlight search mode.
 */
bridge.onPageLoaded = function(chapterIndex, pageIndex, readingPosition, requestId,
    highlightSearch) {
};


/**
 * Reports failure to find the previous or next highlight.
 *
 * @param {number} requestId Unique id passed through goToPage or goToPosition.
 * @param {number} highlightSearch Original highlight search mode.
 */
bridge.onNoHighlightFound = function(requestId, highlightSearch) {
};


/**
 * Indicates that a requested position was out-of-bounds by the given margin.
 *
 * @param {number} margin The page index of the requested page in the imaginary
 *            chapter before or after the real chapters. Uses the same semantics
 *            as other page indices: non-negative values are 0-based positions
 *            starting from the beginning of the chapter, negative values are
 *            1-based positions counting down from the last page in the chapter.
 * @param {number} The request ID from the associated loadPage or loadPosition
 *            request.
 */
bridge.onInvalidPosition = function(margin, requestId) {
};


/**
 * Fetches the HTML content of the given segment as a string.
 *
 * @param {string} volumeId Volume ID.
 * @param {string} segmentId Segment ID.
 * @return {string} Segment content as raw HTML; up to {@code maxLength} characters.
 */
bridge.getSegmentContent = function(volumeId, segmentId) {
    return '';
};


/**
 * Returns the appropriate content URI for an embedded image.
 *
 * @param {string} volumeId Volume ID.
 * @param {string} resId Resource ID.
 * @return {string} Content URI.
 */
bridge.getResourceContentUri = function(volumeId, resId) {
    return '';
};


/**
 * Logs a debug message via ADB logcat.
 *
 * @param {string} msg Message to log.
 */
bridge.d = function(msg) {
};


/**
 * Logs an error message via ADB logcat.
 *
 * @param {string} msg Message to log.
 */
bridge.e = function(msg) {
};

/**
 * Signals that the document has changed, which may trigger a redraw.
 * TODO (colleenlee) : Currently buggy, but used in debugging only.
 */
bridge.onDocumentChanged = function() {
};

/**
 * Delivers the text requested by {@link TextReader#loadNearbyText}.
 *
 * @param {string} str String containing word to be extracted.
 * @param {number} offset Offset into string of the caret.
 */
bridge.onNearbyTextLoaded = function(str, offset) {
};
