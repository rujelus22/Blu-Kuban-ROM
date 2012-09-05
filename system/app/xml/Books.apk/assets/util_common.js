// Copyright 2010 Google Inc.  All Rights Reserved.


/**
 * @fileoverview JavaScript utility functions.
 *
 * @author attila@google.com (Attila Bodis)
 */


/**
 * Array of task IDs.  Calling {@link scheduleTask} pushes timeout IDs onto this array.
 *
 * @type {Array.<number>}
 */
var taskIds = [];


/**
 * Enum of standard task delay durations.
 *
 * @enum {number}
 */
var Delay = {
    NONE: 0, // Schedule task as soon as the UI thread is ready.
    SHORT: 100, // Schedule task 100ms after the UI thread is ready.
    LONG: 3000 // Schedule task 3s after the UI thread is ready.
};

var NUMBER_REG_EXP = /[-+]?[0-9]*\.?[0-9]+/;

/**
 * Clears out any pending asynchronous tasks.
 */
function clearPendingTasks() {
    if (taskIds.length != 0) {
        bridge.d('Canceling pending asynchronous tasks.');
        for (var i = 0, taskId; taskId = taskIds[i]; i++) {
            window.clearTimeout(taskId);
        }
        taskIds.length = 0;
    }
}


/**
 * Schedules a task to be executed asynchronously, optionally after a delay.
 *
 * @param {Function} fn Function to be called asynchronously.
 * @param {Delay} delay Delay in after which the function is to be called.
 */
function scheduleTask(fn, delay) {
    taskIds.push(window.setTimeout(fn, delay));
}


/**
 * Checks whether the argument is defined or undefined.
 *
 * @param {*} obj Object to test.
 * @return {boolean} Whether the argument is defined.
 */
function isDef(obj) {
    return typeof obj != 'undefined';
}


/**
 * Checks whether the argument is a string or not.
 *
 * @param {*} obj Object to test.
 * @return {boolean} Whether the argument is a string.
 */
function isString(obj) {
    return typeof obj == 'string';
}

/**
 * Checks whether the argument is an integer or not.
 *
 * @param {*} obj Object to test.
 * @return {boolean} Whether the argument is an integer.
 */
function isInt(n) {
    return typeof n == 'number' && n % 1 == 0;
 }

/**
 * Returns the DOM element with the given ID.
 *
 * @param {string} id DOM ID.
 * @return {?Element} DOM element with the given ID (null if none).
 */
function $(id) {
    return document.getElementById(id) || null;
}


/**
 * Creates a new DOM element with the given tag name and (optional) class name and ID.
 *
 * @param {string} tagName HTML tag name.
 * @param {string=} opt_className Optional space-separated list of CSS class names.
 * @param {string=} opt_id Optional DOM ID.
 */
function $dom(tagName, opt_className, opt_id) {
    var element = document.createElement(tagName);

    if (isDef(opt_className)) {
        element.className = opt_className;
    }

    if (isDef(opt_id)) {
        element.id = opt_id;
    }

    return element;
}


/**
 * Creates a function closure by binding zero or more arguments to a function.  Straight copy of
 * {@code goog.partial} from the Closure JS library.
 *
 * @param {Function} fn Function to bind.
 * @param {*} var_args Zero or more arguments to bind to the function.
 * @return {Function} A bound closure.
 */
function bind(fn, var_args) {
    var args = Array.prototype.slice.call(arguments, 1);
    return function() {
        // Prepend the bound arguments to the current arguments.
        var newArgs = Array.prototype.slice.call(arguments);
        newArgs.unshift.apply(newArgs, args);
        return fn.apply(this, newArgs);
    };
}

/**
 * Creates a link element that references the given CSS uri.
 *
 * @param {string} href uri of the stylesheet.
 * @return the created element.
 */
function createCssLink(href) {
    var link = $dom('link');
    link.rel = "stylesheet";
    link.type = "text/css";
    link.href = href;
    return link;
}

/**
 * Creates a style element that uses the given string as its content.
 *
 * @param {string} textContent css rules for the content of the style element.
 * @return the created element.
 */
function createStyleElement(textContent) {
    var style = $dom('style');
    style.type = "text/css";
    style.textContent = textContent;
    return style;
}

/**
 * @returns the head element of the DOM.
 */
function getHeadElement() {
    return document.getElementsByTagName('HEAD')[0];
}

function emptyCallback() {
}


/**
 * Debug helper to measure speed
 *
 * @param {boolean} enabled Whether the stopwatch is enabled
 * @constructor
 */
function Stopwatch(enabled) {
    this.enabled_ = enabled;
    if (this.enabled_) {
        var currentDate = new Date();
        this.startTime = currentDate.getTime();
    }
}

/**
 * @return the number of milliseconds since the Stopwatch was created, or 0 when disabled
 */
Stopwatch.prototype.getElapsedMillis = function() {
    if (this.enabled_) {
        var currentDate = new Date();
        return currentDate.getTime() - this.startTime;
    } else {
        return 0;
    }
}

/**
 * Constructs a number with unit.
 *
 * @param {number} value the value of the number
 * @param {string} unit the unit of the number
 * @constructor
 */
function NumberWithUnit(value, unit) {
    this.value = value;
    this.unit = unit;
}

/**
 * Extracts the floating point value and following unit from a css property string.
 * @param {string} numberString the css string to parse.
 * @returns null if the string doesn't contain one number, otherwise a {NumberWithUnit} where the
 *          "unit" is the string following the number.
 */
function parseCssNumber(numberString) {
    if (numberString && numberString.length > 0) {
        var matches = NUMBER_REG_EXP.exec(numberString);
        if (matches && (matches.length == 1)) {
            var numberPart = matches[0];
            var unit = numberString.substring(numberString.indexOf(numberPart) + numberPart.length);
            return new NumberWithUnit(parseFloat(numberPart), unit);
        }
    }
    return null;
}

/**
 * Constructs a pair.
 * @constructor
 */
function Pair(first, second) {
    this.first = first;
    this.second = second;
}

/**
 * Compares two pairs by their first element only. Both first elements must be numbers.
 * @param Pair.<Number, ?> a first pair
 * @param Pair.<Number, ?> b second pair
 * @returns {Number} a.first - b.first
 */
function comparePairsByFirstNumber(a, b) {
    return a.first - b.first;
}

/**
 * Constructs a mutable rectangle.
 * WARNING: this is very basic : width and height are NOT modified if any of the other coordinates
 * is changed (and vice-versa).
 *
 * @constructor
 */
function Rect(left, top, right, bottom) {
    // todo(arnaudberry) make this more robust.
    this.left = left;
    this.top = top;
    this.right = right;
    this.bottom = bottom;
    this.width = this.right - this.left;
    this.height = this.bottom - this.top;
}

/**
 * Returns true if the point is inside {@code rect}.
 *
 * @param {number} x The x-coordinate of the point.
 * @param {number} y The y-coordinate of the point.
 * @param {Rect} rect The rectangle.
 */
function isPointInsideRect(x, y, rect) {
    return (rect.left <= x) && (x < rect.right) && (rect.top <= y) && (y < rect.bottom);
}

/**
 * Zooms the given rectangle.
 * @param {ClientRect} rect the rectangle to zoom
 * @param {number} zoom the zoom value to apply
 *
 * @return a new rectangle that has been zoomed
 */
function zoomRect(rect, zoom) {
    var zoomedRect = new Rect(rect.left * zoom, rect.top * zoom, rect.right * zoom,
        rect.bottom * zoom);
    return zoomedRect;
}

/**
 * Returns the bounding rectangle of an element with the given zoom applied to it.
 * Do NOT call getBoundingClientRect directly as it returns the rectangle without zoom!
 * @param element the DOM element
 * @param {number} zoom the zoom factor to apply
 * @returns the zoomed bounding rectangle of the element
 */
function getZoomedBoundingClientRect(element, zoom) {
    // todo(arnaudberry) write some code to detect if a newer implementation takes the zoom into
    // account (and do not apply the zoom here).
    var result = zoomRect(element.getBoundingClientRect(), zoom);
    return result;
}

/**
 * Returns the client rectangles of an element with the given zoom applied to each of them.
 * Do NOT call getClientRects directly as it returns rectangles without zoom!
 * @param element the DOM element
 * @param {number} zoom the zoom factor to apply
 * @returns the zoomed bounding rectangle of the element
 */

function getZoomedClientRects(element, zoom) {
    // todo(arnaudberry) write some code to detect if a newer implementation takes the zoom into
    // account (and do not apply the zoom here).
    var result = [];
    var rects = element.getClientRects();
    for (var rectNdx = 0; rectNdx < rects.length; rectNdx++) {
        result.push(zoomRect(rects[rectNdx], zoom));
    }
    return result;
}

// functions to draw debug rectangles under a given "layer" (or the body if not found)
var RECTS_LAYER_DIV_ID = "rects_layer";
var rectsLayerElements = undefined;
var triedFetch = false;

function drawOutline(rect, color, size, text, bgColor) {
    try {
        var outline = document.createElement("div");
        if (text != undefined) {
            outline.innerHTML = text;
        }

        if (bgColor != undefined) {
            outline.style.backgroundColor = bgColor;
        }

        outline.style.position = "absolute";
        outline.style.top = (Math.floor(rect.top) - size + 1) + "px";
        outline.style.left = (Math.floor(rect.left) - size + 1) + "px";
        outline.style.width = Math.floor(rect.width)  + "px";
        outline.style.height = Math.floor(rect.height) + "px";
        outline.style.border = size + "px solid " + color;

        if (rectsLayerElements == undefined && !triedFetch) {
            triedFetch = true;
            rectsLayerElements = document.getElementById(RECTS_LAYER_DIV_ID);
        } // no else

        if (rectsLayerElements) {
            rectsLayerElements.appendChild(outline);
        } else {
            document.body.appendChild(outline);
        }
    } catch (e) {
        bridge.e('Problem during drawOutline(): ' + e);
        return "";
    }
}

function outlineRects(rects, color) {
    for (var ii = 0; ii < rects.length; ii++) {
        var rect = rects[ii];
        drawOutline(rect, color, 1);
    }
}


function jsonRectFromRect(rect) {
    return jsonRectFromRectT(rect, 0, 0);
}


function jsonRectFromRectT(rect, translateX, translateY) {
    var jsonRect = "";
    if (rect != null) {
        jsonRect = '{"left":' + (rect.left + translateX)
                + ', "top": ' + (rect.top + translateY)
                + ', "right": ' + (rect.right + translateX)
                + ', "bottom": ' + (rect.bottom + translateY) + '}';
    }

    return jsonRect;
}


/**
 * Determine whether a node's text content is entirely whitespace.
 *
 * @param nod  A node implementing the |CharacterData| interface (i.e.,
 *             a |Text|, |Comment|, or |CDATASection| node
 * @return     True if all of the text content of |nod| is whitespace,
 *             otherwise false.
 */
function is_all_ws(nod) {
    // Use ECMA-262 Edition 3 String and RegExp features
    return !(/\S/.test(nod.data));
}

/**
 * Returns the value unless it's smaller than min, in which case returns min, or
 * larger than max, in which case returns max.
 */
function clamp(value, min, max) {
    if (value < min) {
        return min;
    } else if (value > max) {
        return max;
    } else {
        return value;
    }
}

/**
 * Prints descriptions of every descendant element of a given node as debug
 * messages.
 *
 * @param {Node} root the root node of the DOM subtree to print
 */
function dumpNode(root) {
    bridge.d('Elements under ' + root + ':');
    var iter = document.createNodeIterator(root, NodeFilter.SHOW_ELEMENT, null, false);
    var first = true;
    var node;
    while (node = iter.nextNode()) {
        var description = '[' + node.nodeName;

        var id = node.getAttribute('id');
        if (id != null) {
            description = description.concat(' id=' + id);
        }
        description = description.concat(']');

        bridge.d(description);
    }
}
