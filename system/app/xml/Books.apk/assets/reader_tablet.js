// Copyright 2010 Google Inc.  All Rights Reserved.


/**
 * Loads and processes the contents of a chapter segment.
 *
 * TODO(tomo): make member function of Chapter class
 *
 * @param {Chapter} chapter 0-based chapter index.
 * @param {string} segmentId Segment ID.
 */
function loadSegment(chapter, segmentId) {
    var segmentContentUri = buildSegmentContentUri_(volume.account, volume.id, segmentId);

    var request = new XMLHttpRequest();
    request.open('GET', segmentContentUri, false);
    request.send(null);

    if (request.status == 200) {
        var segmentContent = request.responseText;
        var doc = document.implementation.createHTMLDocument(undefined);
        var temp = doc.createElement('div');
        temp.innerHTML = segmentContent;
        processImageElements_(temp, true);
        processTextNodes_(temp);
        setNightModeOnElementsIfNeeded_(temp);

        // Import the segment DOM into the chapter element in the main HTML document.
        var element = chapter.element;
        element.appendChild(document.adoptNode(temp));

        // Constrain wide tables to the viewport's width. Do this after appending the node otherwise
        // the table width is still 0.
        processTableElements_(temp);
    } else {
        bridge.e('problem loading segment content: ' + segmentContentUri);
    }
}


function buildResourceContentUri(account, volumeId, resId) {
    // NOTE: keep these in sync with BooksContract builder methods
    return 'books-content://com.google.android.apps.books/accounts/' + account
            + '/volumes/' + volumeId + '/res/' + resId + '/content';
}


function buildSegmentContentUri_(account, volumeId, segmentId) {
    // NOTE: keep these in sync with BooksContract builder methods
    return 'books-content://com.google.android.apps.books/accounts/' + account
            + '/volumes/' + volumeId + '/segments/' + segmentId + '/content';
}

