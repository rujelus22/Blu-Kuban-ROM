// Copyright 2012 Google Inc. All Rights Reserved.

/**
 * @fileoverview Implementation of the communication protocol between the Punch
 * webview and the native layer. See google3/javascript/apps/punch/viewer/
 * mobilenative/api/webview/externs/jstonative/webvieweventlistener.js for
 * more detail of what methods need to be defined.
 * @author brianpark@google.com (Brian Park)
 */

// Javascript -> Native callbacks.
window.punchWebViewEventListener = (function() {
  var dataApi_;

  return {
    /**
     * Called when the Punch APIs are exported.
     */
    onApiExported: function(dataApi, controlApi) {
      dataApi_ = dataApi;
      window.PUNCH_WEBVIEW_CONTROL_API = controlApi;
      var pageCount = dataApi_.getNumSlides();
      var pageWidth = dataApi_.getPageWidth();
      var pageHeight = dataApi_.getPageHeight();

      window.WebViewApi.onApiExported(pageCount, pageWidth, pageHeight);
    },

    /**
     * Called when there is a change in a slide's load state.
     * @see punch.viewer.mobilenative.LOAD_STATE_MAPPING
     */
    onSlideLoadStateChange: function(slideIndex, loadState) {
      // If the slide's load state is LOADED then fill in title and thumbnail
      // content.
      var slideContent = null;
      var slideContentType = null;
      var slideTitle = null;
      var slideSpeakerNotes = null;
      if (loadState == 2) {
        slideContent = dataApi_.getSlideContent(slideIndex);
        slideContentType = dataApi_.getContentType();
        slideTitle = dataApi_.getSlideTitle(slideIndex);
        slideSpeakerNotes = dataApi_.getSpeakerNotes(slideIndex);
      }
      window.WebViewApi.onSlideLoadStateChange(slideIndex, loadState,
          slideContent, slideContentType, slideTitle, slideSpeakerNotes);
    },

    /**
     * Called when requests for all slides have completed.
     */
    onFinishedLoading: function() {
      window.WebViewApi.onFinishedLoading(dataApi_.isLoaded());
    },

    /**
     * Called when it navigates to a different slide or a different part (when a
     * slide contains multiple animations) of a slide.
     */
    onNavigation: function() {
      var slideIndex = dataApi_.getCurrentSlideIndex();
      var speakerNotes = dataApi_.getSpeakerNotes(slideIndex);
      window.WebViewApi.onNavigation(slideIndex, speakerNotes);
    },

    /**
     * Called when there is a change in the action's state.
     */
    onActionEnabledStateChange: function(actionId) {
      window.WebViewApi.onActionEnabledStateChange(
          actionId, dataApi_.isActionEnabled(actionId));
    },

    /**
     * Called to notify when there is a change in previous preview.
     */
    onPreviousPreviewChange: function() {
      var prevContent = null;
      if (dataApi_.hasPrevContent()) {
        prevContent = dataApi_.getPrevContent();
      }
      window.WebViewApi.onPreviousPreviewChange(prevContent);
    },

    /**
     * Called to notify when there is a change in next preview.
     */
    onNextPreviewChange: function() {
      var nextContent = null;
      if (dataApi_.hasNextContent()) {
        nextContent = dataApi_.getNextContent();
      }
      window.WebViewApi.onNextPreviewChange(nextContent);
    }
  };
})();
