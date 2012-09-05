var readability = {}
 regexps = {
        unlikelyCandidates:    /combx|comment|community|disqus|extra|foot|header|menu|remark|rss|shoutbox|sidebar|sponsor|ad-break|agegate|pagination|pager|popup|tweet|twitter/i,
        okMaybeItsACandidate:  /and|article|body|column|main|shadow/i,
        positive:              /article|body|content|entry|hentry|main|page|pagination|post|text|blog|story/i,
        negative:              /combx|comment|com-|contact|foot|footer|footnote|masthead|media|meta|outbrain|promo|related|scroll|shoutbox|sidebar|sponsor|shopping|tags|tool|widget|scbox|snp_mp_hp_page_0/i,
        extraneous:            /print|archive|comment|discuss|e[\-]?mail|share|reply|all|login|sign|single/i,
        divToPElements:        /<(a|blockquote|dl|div|img|ol|p|pre|table|ul|script)/i,
        replaceBrs:            /(<br[^>]*>[ \n\r\t]*){2,}/gi,
        replaceFonts:          /<(\/?)font[^>]*>/gi,
        trim:                  /^\s+|\s+$/g,
        normalize:             /\s{2,}/g,
        killBreaks:            /(<br\s*\/?>(\s|&nbsp;?)*){1,}/g,
        videos:                /http:\/\/(www\.)?(youtube|vimeo)\.com/i,
        skipFootnoteLink:      /^\s*(\[?[a-z0-9]{1,2}\]?|^|edit|citation needed)\s*$/i,
        nextLink:              /(next|weiter|continue|>([^\|]|$)|»([^\|]|$))/i,
        prevLink:              /(prev|earl|old|new|<|«)/i
    }
function getLinkDensity(e) {
        var links      = e.getElementsByTagName("a");
        var textLength = getInnerText(e).length;
        var linkLength = 0;
        for(var i=0, il=links.length; i<il;i+=1)
        {
            linkLength += getInnerText(links[i]).length;
        }       

        return linkLength / textLength;
    }	
function getClassWeight(e) {
        /*if(!readability.flagIsActive(readability.FLAG_WEIGHT_CLASSES)) {
            return 0;
        }*/

        var weight = 0;

        /* Look for a special classname */
        if (typeof(e.className) === 'string' && e.className !== '')
        {
            if(e.className.search(regexps.negative) !== -1) {
                weight -= 25; }

            if(e.className.search(regexps.positive) !== -1) {
                weight += 25; }
        }

        /* Look for a special ID */
        if (typeof(e.id) === 'string' && e.id !== '')
        {
            if(e.id.search(regexps.negative) !== -1) {
                weight -= 25; }

            if(e.id.search(regexps.positive) !== -1) {
                weight += 25; }
        }

        return weight;
    }
function initializeNode(node) {
        node.readability = {"contentScore": 0};         

        switch(node.tagName) {
            case 'DIV':
                node.readability.contentScore += 10;
                break;

            case 'PRE':
            case 'TD':
            case 'BLOCKQUOTE':
                node.readability.contentScore += 3;
                break;
                
            case 'ADDRESS':
            case 'OL':
            case 'UL':
            case 'DL':
            case 'DD':
            case 'DT':
            case 'LI':
            case 'FORM':
                node.readability.contentScore -= 3;
                break;

            case 'H1':
            case 'H2':
            case 'H3':
            case 'H4':
            case 'H5':
            case 'H6':
            case 'TH':
                node.readability.contentScore -= 5;
                break;
        }
       
        node.readability.contentScore += getClassWeight(node);
    }
function getInnerText(e, normalizeSpaces) {
        var textContent    = "";

        if(typeof(e.textContent) === "undefined" && typeof(e.innerText) === "undefined") {
            return "";
        }

        normalizeSpaces = (typeof normalizeSpaces === 'undefined') ? true : normalizeSpaces;

        if (navigator.appName === "Microsoft Internet Explorer") {
            textContent = e.innerText.replace( regexps.trim, "" ); }
        else {
            textContent = e.textContent.replace( regexps.trim, "" ); }

        if(normalizeSpaces) {
            return textContent.replace( regexps.normalize, " "); }
        else {
            return textContent; }
    }
	
function recognizeArticle() {
	//To disable reader on homepage of the website
	var hostName = document.location.hostname;
        hostName = hostName + "/";
	var hrefName = window.location.href;
	var hrefPage = hrefName.replace(/http:\/\/|https:\/\//i, "");
	if(hostName === hrefPage) {
          return false;
	}	
	
        var page = document.body;
        var allElements = page.getElementsByTagName('*');
        var node = null;
        var nodesToScore = [];
        for(var nodeIndex = 0; (node = allElements[nodeIndex]); nodeIndex+=1) {
              if (node.tagName === "P" || node.tagName === "TD" || node.tagName === "PRE"||node.tagName === "p" || node.tagName === "td" || node.tagName === "pre") {
                 nodesToScore[nodesToScore.length] = node;
            }
           if (node.tagName === "DIV") {
                if (node.innerHTML.search(regexps.divToPElements) === -1) {
                    try {
                        nodesToScore[nodesToScore.length] = node;
                    }
                    catch(e) {
                       // dbg("Could not alter div to p, probably an IE restriction, reverting back to div.: " + e);
                    }
					
                }
                else
                {
                    // EXPERIMENTAL 
                    for(var i = 0, il = node.childNodes.length; i < il; i+=1) {
                        var childNode = node.childNodes[i];
                        if(childNode.nodeType === 3) { // Node.TEXT_NODE
                        nodesToScore[nodesToScore.length] = childNode;
                        }
                    }
                }
            } 
       
        }
	

        var candidates = [];
        for (var pt=0; pt < nodesToScore.length; pt+=1) {
            var parentNode      = nodesToScore[pt].parentNode;
            var grandParentNode = parentNode ? parentNode.parentNode : null;
            var innerText       = getInnerText(nodesToScore[pt]);

            if(!parentNode || typeof(parentNode.tagName) === 'undefined') {
                continue;
            }

            /* If this paragraph is less than 25 characters, don't even count it. */
            if(innerText.length < 25) {
                continue; }

            /* Initialize readability data for the parent. */
            if(typeof parentNode.readability === 'undefined') {
                initializeNode(parentNode);
                candidates.push(parentNode);
				
            }

            /* Initialize readability data for the grandparent. */
            if(grandParentNode && typeof(grandParentNode.readability) === 'undefined' && typeof(grandParentNode.tagName) !== 'undefined') {
                initializeNode(grandParentNode);
                candidates.push(grandParentNode);
				
            }

            var contentScore = 0;

            /* Add a point for the paragraph itself as a base. */
            contentScore+=1;

            /* Add points for any commas within this paragraph */
            contentScore += innerText.split(',').length;
            
            /* For every 100 characters in this paragraph, add another point. Up to 3 points. */
            contentScore += Math.min(Math.floor(innerText.length / 100), 3);
            
            /* Add the score to the parent. The grandparent gets half. */
            parentNode.readability.contentScore += contentScore;

            if(grandParentNode) {
                grandParentNode.readability.contentScore += contentScore/2;             
            }
        }

        /**
         * After we've calculated scores, loop through all of the possible candidate nodes we found
         * and find the one with the highest score.
        **/
        var topCandidate = null;
        for(var c=0, cl=candidates.length; c < cl; c+=1)
        {
            /**
             * Scale the final candidates score based on link density. Good content should have a
             * relatively small link density (5% or less) and be mostly unaffected by this operation.
            **/
            candidates[c].readability.contentScore = candidates[c].readability.contentScore * (1-getLinkDensity(candidates[c]));

            if(!topCandidate || candidates[c].readability.contentScore > topCandidate.readability.contentScore) {
                topCandidate = candidates[c]; }
        }
        /**
         * If we still have no top candidate, just use the body as a last resort.
         * We also have to copy the body node so it is something we can modify.
         **/
      if (topCandidate === null || topCandidate.tagName === "BODY")
      {
        //alert('no topCandidate found');
      }
	  else
	  {
		//alert(window.location.href);
		//alert('topCandidate.readability.contentScore='+topCandidate.readability.contentScore );
	    var recog_div = document.createElement("div");
	    recog_div.id = "recog_div";
	    recog_div.style.display='none';
	    if(topCandidate.readability.contentScore >= 40)
		{
			for (var pt=0; pt < nodesToScore.length; pt+=1) {
			    var parentNode      = nodesToScore[pt].parentNode;
			    var grandParentNode = parentNode ? parentNode.parentNode : null;
				delete parentNode.readability;
				delete grandParentNode.readability;
			}
			recog_div.innerHTML = "true"
		}
		else
		{
		    recog_div.innerHTML = "false"
		}
		document.getElementsByTagName("body")[0].appendChild(recog_div);
		//alert(recog_div.innerHTML);
      }
	
    }
   recognizeArticle();
   

 
