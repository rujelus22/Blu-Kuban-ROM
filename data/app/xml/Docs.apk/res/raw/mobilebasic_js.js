(function() {
  // Make this JS idempotent, i.e. do nothing if it has already run
  if (!document.getElementById("mobileBasicDivIdReservedDocsForAndroid")) {
    var headElement = document.getElementsByTagName("head")[0];

    var metaElement = document.createElement("meta");
    metaElement.name = "viewport";
    metaElement.content = "width=device-width; initial-scale=1; maximum-scale=1; minimum-scale=1; user-scalable=0;";
    headElement.appendChild(metaElement);

    var styleElement = document.createElement("link");
    styleElement.rel = "stylesheet";
    styleElement.type = "text/css";
    styleElement.href = "%CSS_FILE_NAME%";
    headElement.appendChild(styleElement);

    var bodyElement = document.getElementsByTagName("body")[0];

    var divElement = document.createElement("div");
    divElement.className = "bottombar";
    divElement.id = "mobileBasicDivIdReservedDocsForAndroid"
    divElement.innerHTML = "<a href='https://docs.google.com/m' class='backbutton left-group' id='backbutton'>%HTML_ESCAPED_BACK_BUTTON_CAPTION%</a><div class='doctitle'>%HTML_ESCAPED_DOCUMENT_TITLE%</div>";
    bodyElement.insertBefore(divElement, bodyElement.firstChild);
  }
})();
