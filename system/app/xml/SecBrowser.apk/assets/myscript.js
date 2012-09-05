var noUrlParams;
var windowpathname;
var protocol;
var host;
var fullurl;
var readability = {
}
    parsedPages= {}; /* The list of pages we've parsed in this call of readability, for autopaging. As a key store for easier searching. */
/**
     * Find a cleaned up version of the current URL, to use for comparing links for possible next-pageyness.
     *
     * @author Dan Lacy
     * @return string the base url
    **/
    
    //added on Dec 5 2011 to solve the multiple page issue.
    pageETags = {}; 

function findBaseUrl() {
        var noUrlParams     = windowpathname.split("?")[0],
            urlSlashes      = noUrlParams.split("/").reverse(),
            cleanedSegments = [],
            possibleType    = "";

        for (var i = 0, slashLen = urlSlashes.length; i < slashLen; i+=1) {
            var segment = urlSlashes[i];

            // Split off and save anything that looks like a file type.
            if (segment.indexOf(".") !== -1) {
                possibleType = segment.split(".")[1];

                /* If the type isn't alpha-only, it's probably not actually a file extension. */
                if(!possibleType.match(/[^a-zA-Z]/)) {
                    segment = segment.split(".")[0];                    
                }
            }
            
            /**
             * EW-CMS specific segment replacement. Ugly.
             * Example: http://www.ew.com/ew/article/0,,20313460_20369436,00.html
            **/
            if(segment.indexOf(',00') !== -1) {
                segment = segment.replace(',00', '');
            }

            // If our first or second segment has anything looking like a page number, remove it.
            if (segment.match(/((_|-)?p[a-z]*|(_|-))[0-9]{1,2}$/i) && ((i === 1) || (i === 0))) {
                segment = segment.replace(/((_|-)?p[a-z]*|(_|-))[0-9]{1,2}$/i, "");
            }


            var del = false;

            /* If this is purely a number, and it's the first or second segment, it's probably a page number. Remove it. */
            if (i < 2 && segment.match(/^\d{1,2}$/)) {
                del = true;
            }
            
            /* If this is the first segment and it's just "index", remove it. */
            if(i === 0 && segment.toLowerCase() === "index") {
                del = true;
            }

            /* If our first or second segment is smaller than 3 characters, and the first segment was purely alphas, remove it. */
            if(i < 2 && segment.length < 3 && !urlSlashes[0].match(/[a-z]/i)) {
                del = true;
            }

            /* If it's not marked for deletion, push it to cleanedSegments. */
            if (!del) {
                cleanedSegments.push(segment);
            }
        }

        // This is our final, cleaned, base article URL.
      //  return window.location.protocol + "//" + window.location.host + cleanedSegments.reverse().join("/");
        return protocol + "//" + host +  cleanedSegments.reverse().join("/");
    }

    /**
     * Look for any paging links that may occur within the document.
     * 
     * @param body
     * @return object (array)
    **/

function findNextPageLink(elem) {
        var possiblePages = {},
            allLinks = elem.getElementsByTagName('a'),
            articleBaseUrl = findBaseUrl();
   
        /**
         * Loop through all links, looking for hints that they may be next-page links.
         * Things like having "page" in their textContent, className or id, or being a child
         * of a node with a page-y className or id.
         *
         * Also possible: levenshtein distance? longest common subsequence?
         *
         * After we do that, assign each page a score, and 
        **/
            
            
           
        for(var i = 0, il = allLinks.length; i < il; i+=1) {
            var link     = allLinks[i],
                linkHref = allLinks[i].href.replace(/#.*$/, '').replace(/\/$/, '');
            
        
            if((host !== linkHref.split(/\/+/g)[1]) && (protocol !== linkHref.split(/\/+/g)[0])) {
            	linkHref = protocol+"//"+host+"/"+linkHref;
            	
            }

           
            /* If we've already seen this page, ignore it */
            if(linkHref === "" || linkHref === articleBaseUrl || linkHref === fullurl || linkHref in parsedPages) {
                continue;
            }
            
            
            
            /* If it's on a different domain, skip it. */
            if(host !== linkHref.split(/\/+/g)[1]) {
                continue;
            }
        //    alert("linkhref"+linkHref);
            var linkText = getInnerText(link);

            /* If the linkText looks like it's not the next page, skip it. */
            if(linkText.match(regexps.extraneous) || linkText.length > 25) {
                continue;
            }

            /* If the leftovers of the URL after removing the base URL don't contain any digits, it's certainly not a next page link. */
            var linkHrefLeftover = linkHref.replace(articleBaseUrl, '');
            if(!linkHrefLeftover.match(/\d/)) {
                continue;
            }
            
            if(!(linkHref in possiblePages)) {
                possiblePages[linkHref] = {"score": 0, "linkText": linkText, "href": linkHref};             
            } else {
                possiblePages[linkHref].linkText += ' | ' + linkText;
            }

            var linkObj = possiblePages[linkHref];

            /**
             * If the articleBaseUrl isn't part of this URL, penalize this link. It could still be the link, but the odds are lower.
             * Example: http://www.actionscript.org/resources/articles/745/1/JavaScript-and-VBScript-Injection-in-ActionScript-3/Page1.html
            **/
            if(linkHref.indexOf(articleBaseUrl) !== 0) {
                linkObj.score -= 25;
            }

            //var linkData = linkText + ' ' + link.className + ' ' + link.id;
            /*added on Dec 5 2011 to solve the multiple page issue.link innerHTML added, as inner html may contains any refernce for next page, for eg it may contain an image for NEXT PAGE */
            var linkData = linkText + ' ' + link.className + ' ' + link.id + link.innerHTML;
            if(linkData.match(regexps.nextLink)) {
                linkObj.score += 50;
            }
            if(linkData.match(/pag(e|ing|inat)/i)) {
                linkObj.score += 25;
            }
            if(linkData.match(/(first|last)/i)) { // -65 is enough to negate any bonuses gotten from a > or Â» in the text, 
                /* If we already matched on "next", last is probably fine. If we didn't, then it's bad. Penalize. */
                if(!linkObj.linkText.match(regexps.nextLink)) {
                    linkObj.score -= 65;
                }
            }
            if(linkData.match(regexps.negative) || linkData.match(regexps.extraneous)) {
                linkObj.score -= 50;
            }
            if(linkData.match(regexps.prevLink)) {
                linkObj.score -= 200;
            }

            /* If a parentNode contains page or paging or paginat */
            var parentNode = link.parentNode,
                positiveNodeMatch = false,
                negativeNodeMatch = false;
            while(parentNode) {
                var parentNodeClassAndId = parentNode.className + ' ' + parentNode.id;
                if(!positiveNodeMatch && parentNodeClassAndId && parentNodeClassAndId.match(/pag(e|ing|inat)/i)) {
                    positiveNodeMatch = true;
                    //linkObj.score += 25;
                    /*added on Dec 5 2011 to solve the multiple page issue. reduced the score from 50 to 25*/
                    linkObj.score += 15;
                }
                if(!negativeNodeMatch && parentNodeClassAndId && parentNodeClassAndId.match(regexps.negative)) {
                    /* If this is just something like "footer", give it a negative. If it's something like "body-and-footer", leave it be. */
                    if(!parentNodeClassAndId.match(regexps.positive)) {
                        linkObj.score -= 25;
                        negativeNodeMatch = true;                       
                    }
                }
                
                parentNode = parentNode.parentNode;
            }

            /**
             * If the URL looks like it has paging in it, add to the score.
             * Things like /page/2/, /pagenum/2, ?p=3, ?page=11, ?pagination=34
            **/
            if (linkHref.match(/p(a|g|ag)?(e|ing|ination)?(=|\/)[0-9]{1,2}/i) || linkHref.match(/(page|paging)/i)) {
                linkObj.score += 25;
            }

            /* If the URL contains negative values, give a slight decrease. */
            if (linkHref.match(regexps.extraneous)) {
                linkObj.score -= 15;
            }

            /**
             * Minor punishment to anything that doesn't match our current URL.
             * NOTE: I'm finding this to cause more harm than good where something is exactly 50 points.
             *       Dan, can you show me a counterexample where this is necessary?
             * if (linkHref.indexOf(window.location.href) !== 0) {
             *    linkObj.score -= 1;
             * }
            **/

            /**
             * If the link text can be parsed as a number, give it a minor bonus, with a slight
             * bias towards lower numbered pages. This is so that pages that might not have 'next'
             * in their text can still get scored, and sorted properly by score.
            **/
            var linkTextAsNumber = parseInt(linkText, 10);
            if(linkTextAsNumber) {
                // Punish 1 since we're either already there, or it's probably before what we want anyways.
                if (linkTextAsNumber === 1) {
                    linkObj.score -= 10;
                }
                else {
                    // Todo: Describe this better
                    linkObj.score += Math.max(0, 10 - linkTextAsNumber);
                }
            }
        }

        /**
         * Loop thrugh all of our possible pages from above and find our top candidate for the next page URL.
         * Require at least a score of 50, which is a relatively high confidence that this page is the next link.
        **/
        var topPage = null;
        
        for(var page in possiblePages) {
        	
            if(possiblePages.hasOwnProperty(page)) {
            /*added on Dec 5 2011 to solve the multiple page issue.changed the score to 50*/
                if(possiblePages[page].score >= 50 && (!topPage || topPage.score < possiblePages[page].score)) {
                    topPage = possiblePages[page];
                }
            }
        }
     
        if(topPage) {
            var nextHref = topPage.href.replace(/\/$/,'');

            //dbg('NEXT PAGE IS ' + nextHref);
            parsedPages[nextHref] = true;
          //alert(nextHref);
            return nextHref;            
        }
        else {
            return null;
        }
    }

    /**
     * Build a simple cross browser compatible XHR.
     *
     * TODO: This could likely be simplified beyond what we have here right now. There's still a bit of excess junk.
    **/
   function xhr() {
        if (typeof XMLHttpRequest !== 'undefined' && (protocol !== 'file:' || !window.ActiveXObject)) {
            return new XMLHttpRequest();
        }
        else {
            try { return new ActiveXObject('Msxml2.XMLHTTP.6.0'); } catch(sixerr) { }
            try { return new ActiveXObject('Msxml2.XMLHTTP.3.0'); } catch(threrr) { }
            try { return new ActiveXObject('Msxml2.XMLHTTP'); } catch(err) { }
        }

        return false;
    }

    function successfulRequest(request) {
        return (request.status >= 200 && request.status < 300) || request.status === 304 || (request.status === 0 && request.responseText);
    }

    function ajax(url, options) {
        var request = xhr();

        function respondToReadyState(readyState) {
            if (request.readyState === 4) {
                if (successfulRequest(request)) {
                    if (options.success) { options.success(request); }
                }
                else {
                    if (options.error) { options.error(request); }
                }
            }
        }

        if (typeof options === 'undefined') { options = {}; }

        request.onreadystatechange = respondToReadyState;
        
        request.open('get', url, true);
        request.setRequestHeader('Accept', 'text/html');

        try {
            request.send(options.postBody);
        }
        catch (e) {
            if (options.error) { options.error(); }
        }

        return request;
    }

    /**
     * Make an AJAX request for each page and append it to the document.
    **/
    curPageNum = 1;
    maxPages =  30; /* The maximum number of pages to loop through before we call it quits and just show a link. */
    totalPageNum = 1;
 function appendNextPage(nextPageLink) {
//	alert("inside appendNextPage" + nextPageLink);
 
	var index_value = nextPageLink.indexOf(",");
	  if(index_value!=-1) {
		  
		  windowpathname = nextPageLink.substring(index_value+1,nextPageLink.length);
		 
		  nextPageLink = nextPageLink.substring(0,index_value);
		  parsedPages[nextPageLink] = true;
	//	  alert(index_value);
		  var protocol_value = windowpathname.indexOf(":");
		  protocol = windowpathname.substring(0,protocol_value+1);
	///	  alert("protocol" +protocol);
		  windowpathname = windowpathname.substring(protocol_value+1,nextPageLink.length);
		  var host_value = windowpathname.indexOf("/");
		  host = windowpathname.substring(0,host_value);
	//	  alert("host" +host);
		  windowpathname = windowpathname.substring(host_value,nextPageLink.length);
	//	  alert("windowpathname" +windowpathname);
		  fullurl=protocol + "//" + host + windowpathname;
	  }
	  else{
		     
			 var protocol_value =nextPageLink.indexOf("//");
			 protocol= nextPageLink.substring(0,protocol_value);
		//	 alert("protocol" + protocol);
			 var  host_value = nextPageLink.lastIndexOf("/");
			 host = nextPageLink.substring(protocol_value+2,host_value);
		//	 alert("host" + host);
			 windowpathname= nextPageLink.substring(host_value, nextPageLink.length);
		//	 alert("path" + windowpathname);
			 fullurl=protocol + "//" + host + windowpathname;
		  
	  }
	  

     
	curPageNum+=1;
	totalPageNum+=1;

        var articlePage       = document.createElement("DIV");
        articlePage.id        = 'readability-page-' + curPageNum;
        articlePage.className = 'page';
        //articlePage.innerHTML = '<p class="page-separator" title="Page ' + curPageNum + '">Page '+curPageNum+'</p>';
        //To update the total number of pages
        articlePage.innerHTML = '<div class="page-separator"><span class="page-num" title="Page ' + curPageNum + '">Page '+curPageNum+' of </span><span id="page" class="page-total">'+totalPageNum+'</span></div>';


        if(curPageNum > maxPages) {
  
            var nextPageMarkup = "<div style='text-align: center'><a href='" + allPageLink + "'>View Next Page</a></div>";
        	articlePage.innerHTML = articlePage.innerHTML + nextPageMarkup;
            return;
        }
        
        /**
         * Now that we've built the article page DOM element, get the page content
         * asynchronously and load the cleaned content into the div we created for it.
        **/
        (function(pageUrl, thisPage) {
            ajax(pageUrl, {
                success: function(r) {

                    /* First, check to see if we have a matching ETag in headers - if we do, this is a duplicate page. */
                	//alert("ajax request sending");
                    var eTag = r.getResponseHeader('ETag');
                    if(eTag) {
                        if(eTag in pageETags) {
                            dbg("Exact duplicate page found via ETag. Aborting.");
                            articlePage.style.display = 'none';
                            return;
                        } else {
                            pageETags[eTag] = 1;
                        }                       
                    }

                    // TODO: this ends up doubling up page numbers on NYTimes articles. Need to generically parse those away.
                    var page = document.createElement("DIV");

                    /**
                     * Do some preprocessing to our HTML to make it ready for appending.
                     * â€¢ Remove any script tags. Swap and reswap newlines with a unicode character because multiline regex doesn't work in javascript.
                     * â€¢ Turn any noscript tags into divs so that we can parse them. This allows us to find any next page links hidden via javascript.
                     * â€¢ Turn all double br's into p's - was handled by prepDocument in the original view.
                     *   Maybe in the future abstract out prepDocument to work for both the original document and AJAX-added pages.
                    **/
                    var responseHtml = r.responseText.replace(/\n/g,'\uffff').replace(/<script.*?>.*?<\/script>/gi, '');
                    responseHtml = responseHtml.replace(/\n/g,'\uffff').replace(/<script.*?>.*?<\/script>/gi, '');
                    responseHtml = responseHtml.replace(/\uffff/g,'\n').replace(/<(\/?)noscript/gi, '<$1div');
                    responseHtml = responseHtml.replace(regexps.replaceBrs, '</p><p>');
                    responseHtml = responseHtml.replace(regexps.replaceFonts, '<$1span>');
                    
                    page.innerHTML = responseHtml;

                    /**
                     * Reset all flags for the next page, as they will search through it and disable as necessary at the end of grabArticle.
                    **/
                    flags = 0x1 | 0x2 | 0x4;

                   nextPageLink = findNextPageLink(page),
                //    alert("nextPageLink" + nextPageLink);
                        content       =  grabArticle(page);
                   //     alert("content" + content);
                   
                   
                   //To find the total number of pages and apply to all pages
                   //if(nextPageLink === null) {
		   	//alert("totalPageNum" + totalPageNum);
		   	var pageNumUpdate = document.getElementsByClassName("page-total");
		   	for(var p=0;p<pageNumUpdate.length;p+=1){
				pageNumUpdate[p].innerHTML = totalPageNum;
			}
		    //}		

                    if(!content) {
                        //dbg("No content found in page to append. Aborting.");
                        return;
                    }

                    /**
                     * Anti-duplicate mechanism. Essentially, get the first paragraph of our new page.
                     * Compare it against all of the the previous document's we've gotten. If the previous
                     * document contains exactly the innerHTML of this first paragraph, it's probably a duplicate.
                    **/
                    /*var firstP = content.getElementsByTagName("P").length ? content.getElementsByTagName("P")[0] : null;
                    if(firstP && firstP.innerHTML.length > 100) {
                        for(var i=1; i <= curPageNum; i+=1) {
                            var rPage = document.getElementById('readability-page-' + i);
                            if(rPage && rPage.innerHTML.indexOf(firstP.innerHTML) !== -1) {
                                dbg('Duplicate of page ' + i + ' - skipping.');
                                articlePage.style.display = 'none';
                                parsedPages[pageUrl] = true;
                                return;
                            }
                        }
                    }
                    
                    removeScripts(content);*/
                     
                    thisPage.innerHTML += content;
                 //   alert(thisPage.innerHTML);
                  //  alert(document.body.innerHTML);
                  
                    
			        document.getElementById("reader_content_div").appendChild(thisPage);
			        adjustWidth(thisPage);

                    /**
                     * After the page has rendered, post process the content. This delay is necessary because,
                     * in webkit at least, offsetWidth is not set in time to determine image width. We have to
                     * wait a little bit for reflow to finish before we can fix floating images.
                    **/
                    /*window.setTimeout(
                        function() { postProcessContent(thisPage); },
                        500
                    );*/
			//alert(nextPageLink);
					

                    if(nextPageLink) {
                    	appendNextPage(nextPageLink);
                    }
					
						
						
					
					
			/*else{
				var reader_div = document.getElementById("reader_div");
				console.log(reader_div);
				TINY.box.show({html:reader_div.innerHTML,close:true,width:800});
			}*/
                }
            });
        }(nextPageLink, articlePage));
    }
 

/**
     * All of the regular expressions in use within readability.
     * Defined up here so we don't instantiate them repeatedly in loops.
     **/
    regexps = {
        unlikelyCandidates:    /combx|comment|community|disqus|extra|foot|header|menu|remark|rss|shoutbox|sidebar|sponsor|ad-break|agegate|pagination|pager|popup|tweet|twitter/i,
        okMaybeItsACandidate:  /and|article|body|column|main|shadow/i,
        positive:              /article|body|content|entry|hentry|main|page|pagination|post|text|blog|story/i,
        negative:              /combx|comment|com-|contact|foot|footer|footnote|masthead|media|meta|outbrain|promo|related|scroll|shoutbox|sidebar|sponsor|shopping|tags|script|tool|widget|scbox|reply|div_dispalyslide|galleryad|cnn_strylftcntnt|snp_mp_hp_page_0/i,
        extraneous:            /print|archive|comment|discuss|e[\-]?mail|share|reply|all|login|sign|single/i,
        divToPElements:        /<(a|blockquote|dl|div|img|ol|p|pre|table|ul)/i,
        replaceBrs:            /(<br[^>]*>[ \n\r\t]*){2,}/gi,
        replaceFonts:          /<(\/?)font[^>]*>/gi,
        trim:                  /^\s+|\s+$/g,
        normalize:             /\s{2,}/g,
        killBreaks:            /(<br\s*\/?>(\s|&nbsp;?)*){1,}/g,
        videos:                /http:\/\/(www\.)?(youtube|vimeo)\.com/i,
        images:		       /(file:\/\/\/android_asset\/play.png|http:\/\/i2.ytimg.com\/vi\/)/i,
        skipFootnoteLink:      /^\s*(\[?[a-z0-9]{1,2}\]?|^|edit|citation needed)\s*$/i,
        /*added on Dec 5 2011 to solve the multiple page issue.changed the regex of nextLink and prevLink*/
        nextLink:              /(next|right|weiter|continue|>([^\|]|$)|\u00BB([^\|]|$))/i, // Match: next, continue, >, >>, » but not >|, »| as those usually mean last. =======adding more classes for anandtech.
        //prevLink:            /(prev|earl|old|new|<|«)/i
        prevLink:              /(prev|earl|old|<|«)/i
    }

/**
     * Clean out spurious headers from an Element. Checks things like classnames and link density.
     *
     * @param Element
     * @return void
**/
    function cleanHeaders(e) {
        for (var headerIndex = 1; headerIndex < 3; headerIndex+=1) {
            var headers = e.getElementsByTagName('h' + headerIndex);
            for (var i=headers.length-1; i >=0; i-=1) {
                if (getClassWeight(headers[i]) < 0 || getLinkDensity(headers[i]) > 0.33) {
                    headers[i].parentNode.removeChild(headers[i]);
                }
            }
        }
    }	

/**
     * Clean a node of all elements of type "tag".
     * (Unless it's a youtube/vimeo video. People love movies.)
     *
     * @param Element
     * @param string tag to clean
     * @return void
     **/
    function clean(e, tag) {
        var targetList = e.getElementsByTagName( tag );
        var isEmbed    = (tag === 'object' || tag === 'embed');
        
        for (var y=targetList.length-1; y >= 0; y-=1) {
            /* Allow youtube and vimeo videos through as people usually want to see those. */
            if(isEmbed) {
                var attributeValues = "";
                for (var i=0, il=targetList[y].attributes.length; i < il; i+=1) {
                    attributeValues += targetList[y].attributes[i].value + '|';
                }
                
                /* First, check the elements attributes to see if any of them contain youtube or vimeo */
                if (attributeValues.search(regexps.videos) !== -1) {
                    continue;
                }

                /* Then check the elements inside this element for the same. */
                if (targetList[y].innerHTML.search(regexps.videos) !== -1) {
                    continue;
                }
                
            }

            targetList[y].parentNode.removeChild(targetList[y]);
        }
    }	
    function cleanHTML5(e, tag) {
        var targetList = e.getElementsByTagName( tag );
        for (var y=targetList.length-1; y >= 0; y-=1) {
         
            targetList[y].parentNode.removeChild(targetList[y]);
        }
    }	
/**
     * Get the number of times a string s appears in the node e.
     *
     * @param Element
     * @param string - what to split on. Default is ","
     * @return number (integer)
    **/
    function getCharCount(e,s) {
        s = s || ",";
        return getInnerText(e).split(s).length-1;
    }	
/**
     * Get an elements class/id weight. Uses regular expressions to tell if this 
     * element looks good or bad.
     *
     * @param Element
     * @return number (Integer)
    **/
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
/**
     * Clean an element of all tags of type "tag" if they look fishy.
     * "Fishy" is an algorithm based on content length, classnames, link density, number of images & embeds, etc.
     *
     * @return void
     **/
    function cleanConditionally(e, tag) {

        /*if(!flagIsActive(readability.FLAG_CLEAN_CONDITIONALLY)) {
            return;
        }*/

        var tagsList      = e.getElementsByTagName(tag);
        var curTagsLength = tagsList.length;

        // To solve the appendChild Error 

	if(tag === "div") {
		var readerDiv = document.getElementById("reader_content_div");
		if(readerDiv !== 'null') {
			var toRemove = false;
			//alert("readerDiv"+readerDiv);
		}
	}	

        /**
         * Gather counts for other typical elements embedded within.
         * Traverse backwards so we can remove nodes at the same time without effecting the traversal.
         *
         * TODO: Consider taking into account original contentScore here.
        **/
        for (var i=curTagsLength-1; i >= 0; i-=1) {
            var weight = getClassWeight(tagsList[i]);
            var contentScore = (typeof tagsList[i].readability !== 'undefined') ? tagsList[i].readability.contentScore : 0;
            
            /*dbg("Cleaning Conditionally " + tagsList[i] + " (" + tagsList[i].className + ":" + tagsList[i].id + ")" + ((typeof tagsList[i].readability !== 'undefined') ? (" with score " + tagsList[i].readability.contentScore) : ''));*/

            if(weight+contentScore < 0)
            {
                tagsList[i].parentNode.removeChild(tagsList[i]);
            }
            else if ( getCharCount(tagsList[i],',') < 10) {
                /**
                 * If there are not very many commas, and the number of
                 * non-paragraph elements is more than paragraphs or other ominous signs, remove the element.
                **/
                var p      = tagsList[i].getElementsByTagName("p").length;
                var img    = tagsList[i].getElementsByTagName("img").length;
                var li     = tagsList[i].getElementsByTagName("li").length-100;
                var input  = tagsList[i].getElementsByTagName("input").length;

                var embedCount = 0;
                var embeds     = tagsList[i].getElementsByTagName("embed");
                for(var ei=0,il=embeds.length; ei < il; ei+=1) {
                    if (embeds[ei].src.search(regexps.videos) === -1) {
                      embedCount+=1; 
                    }
                }
				
                var linkDensity   = getLinkDensity(tagsList[i]);
                var contentLength = getInnerText(tagsList[i]).length;
                var toRemove      = false;

                if ( img > p ) {
                   toRemove = true;
                } else if(li > p && tag !== "ul" && tag !== "ol") {
                    toRemove = true;
                } else if( input > Math.floor(p/3) ) {
                    toRemove = true; 
                } else if(contentLength < 25 && (img === 0 || img > 2) ) {
                    toRemove = true;
                } else if(weight < 25 && linkDensity > 0.2) {
                    toRemove = true;
                } else if(weight >= 25 && linkDensity > 0.5) {
                    toRemove = true;
                } else if((embedCount === 1 && contentLength < 75) || embedCount > 1) {
                    toRemove = true;
                }

                var images     = tagsList[i].getElementsByTagName("img");
                for(var im=0,il=images.length; im < il; im+=1) {
                    if ((images[im].height >= 150) && (images[im].width >= 200)) {
			toRemove = false;
			break;
                    }
                }


                if(toRemove) {
                    tagsList[i].parentNode.removeChild(tagsList[i]);
                }
            }
        }
    }	
/**
     * Remove extraneous break tags from a node.
     *
     * @param Element
     * @return void
     **/
    function killBreaks(e) {
        try {
            e.innerHTML = e.innerHTML.replace(regexps.killBreaks,'<br />');       
        }
        catch (eBreaks) {
            console.log("KillBreaks failed - this is an IE bug. Ignoring.: " + eBreaks);
        }
    }	
/**
     * Remove the style attribute on every e and under.
     * TODO: Test if getElementsByTagName(*) is faster.
     *
     * @param Element
     * @return void
    **/
    function cleanStyles(e) {
        e = e || document;
        var cur = e.firstChild;

        if(!e) {
            return; }

        // Remove any root styles, if we're able.
        if(typeof e.removeAttribute === 'function' && e.className !== 'readability-styled') {
            e.removeAttribute('style'); }

        // Go until there are no more child nodes
        while ( cur !== null ) {
            if ( cur.nodeType === 1 ) {
                // Remove style attribute(s) :
                if(cur.className !== "readability-styled") {
                    cur.removeAttribute("style");                   
                }
                cleanStyles( cur );
            }
            cur = cur.nextSibling;
        }           
    }	

/**
     * Remove the href attribute for all the links.
     * @param Element
     * @return void
    **/

function cleanLinkHrefs(e) {
	var links = e.getElementsByTagName("a");
        for(var i=0, il=links.length; i<il;i+=1)
        {
	    links[i].removeAttribute("href"); /*Disable the link to prevent the redirection of the page*/
        }       
}

/**
     * Prepare the article node for display. Clean out any inline styles,
     * iframes, forms, strip extraneous <p> tags, etc.
     *
     * @param Element
     * @return void
**/
    function prepArticle(articleContent) {
        cleanStyles(articleContent);
        //killBreaks(articleContent);

        /* Clean out junk from the article content */
        cleanConditionally(articleContent, "form");
        clean(articleContent, "object");
        clean(articleContent, "h1");
	cleanHTML5(articleContent, "video");	
	
        /**
         * If there is only one h2, they are probably using it
         * as a header and not a subheader, so remove it since we already have a header.
        ***/
        if(articleContent.getElementsByTagName('h2').length === 1) {
            clean(articleContent, "h2");
        }
        clean(articleContent, "iframe");
		/*added by SISO*/
        clean(articleContent, "script");
        clean(articleContent, "style");
		//clean(articleContent, "span");
	cleanLinkHrefs(articleContent);
/*added by SISO*/
        cleanHeaders(articleContent);

        /* Do these last as the previous stuff may have removed junk that will affect these */
        cleanConditionally(articleContent, "table");
        cleanConditionally(articleContent, "ul");
        cleanConditionally(articleContent, "div");
		
        /* Remove extra paragraphs */
        var articleParagraphs = articleContent.getElementsByTagName('p');
        for(var i = articleParagraphs.length-1; i >= 0; i-=1) {
            var imgCount    = articleParagraphs[i].getElementsByTagName('img').length;
            var embedCount  = articleParagraphs[i].getElementsByTagName('embed').length;
            var objectCount = articleParagraphs[i].getElementsByTagName('object').length;
            
            if(imgCount === 0 && embedCount === 0 && objectCount === 0 && getInnerText(articleParagraphs[i], false) === '') {
                articleParagraphs[i].parentNode.removeChild(articleParagraphs[i]);
            }
        }

        try {
            articleContent.innerHTML = articleContent.innerHTML.replace(/<br[^>]*>\s*<p/gi, '<p');      
        }
        catch (e) {
           console.log("Cleaning innerHTML of breaks failed. This is an IE strict-block-elements bug. Ignoring.: " + e);
        }
		
    }

/* Resizing of Image , Table , Videos */

/*function adjustImageSizeForFirstPage(content) {
	var all_images = content.getElementsByTagName("img");
	for(var im=0,il=all_images.length; im < il; im+=1) {
	//Original width and height of the image before resizing
		var originalWidth = all_images[im].width;
		var originalHeight = all_images[im].height;
		if ((all_images[im].width >= window.innerWidth)) {
			all_images[im].style.width="100%";
			// calculation of resize of width in %
			var diffImage = originalWidth - all_images[im].width;
			var diffImagePercent = (diffImage/originalWidth)*100;
		}
		//If the image height is greater than the original width of the image , then reduce the height
		if ((all_images[im].height >= originalWidth)) {
			var heightPercent = (100 - diffImagePercent);
		    	var heightPercent = Math.round(heightPercent);
		    	var heightNew = all_images[im].height * (heightPercent/100);
		    	if (heightNew >= 1 && heightNew <= originalHeight) {
			    	all_images[im].height = heightNew;
		    	}
		}
	}
}
*/
function adjustImageSizeForFirstPage(content) {
	var all_images = content.getElementsByTagName("img");
	for(var im=0,il=all_images.length; im < il; im+=1) {
		var img = all_images[im];
		var image_width = img.width;
		var image_height = img.height;
		var ratio = img.height / img.width;
		var max_width = 250;
		var max_height = 250;
		var image_src = img.src;
		if (image_src.search(regexps.images) === -1) {
			if(image_width >= max_width && ratio <= 1){
				image_width = max_width;
		   		image_height = image_width * ratio;
			}
			else if(image_height >= max_height){
				image_height = max_height;
		   		image_width = image_height / ratio;
			}
			all_images[im].style.width=image_width+'px';
			all_images[im].style.height=image_height+'px';
			all_images[im].style.display="block";
			all_images[im].style.marginLeft="auto";
			all_images[im].style.marginRight="auto";
			all_images[im].style.marginTop="1px";
			all_images[im].style.marginBottom="1px";
    		}
    	}	
}   	       

function adjustImageSize(content) {
    	//alert("adjustImageSize");
    	var all_images = content.getElementsByTagName("img");
    	//alert("window.innerWidth" + window.innerWidth);
    	for(var im=0,il=all_images.length; im < il; im+=1) {
    	    all_images[im].onload = onloadAdjustImage;
    	}
    	
    }
/*
function onloadAdjustImage(e) {
		  
		   var img = this;
		   var image_width = img.width;
		   if ((image_width >= window.innerWidth)) {
			   this.style.width="100%";
			  
   	       }
	   }
*/
function onloadAdjustImage(e) {
	var img = this;
	var image_width = img.width;
	var image_height = img.height;
	var ratio = img.height / img.width;
	var max_width = 250;
	var max_height = 250;
	var image_src = img.src;
		if (image_src.search(regexps.images) === -1) {
			if(image_width >= max_width && ratio <= 1){
		   		image_width = max_width;
		   		image_height = image_width * ratio;
			}
			else if(image_height >= max_height){
			   	image_height = max_height;
			   	image_width = image_height / ratio;
			}
			this.style.width=image_width+'px';
			this.style.height=image_height+'px';	
			this.style.display="block";
			this.style.marginLeft="auto";
			this.style.marginRight="auto";
			this.style.marginTop="1px";
		        this.style.marginBottom="1px";
		}
}

	   /**
	     * Some content ends up looking ugly if the image is too large to be floated.
	     * If the image is wider than a threshold (currently 55%), no longer float it,
	     * center it instead.
	     *
	     * @param Element
	     * @return void
	    **/
	     function fixImageFloats(articleContent) {
	    	 //alert("fixImageFloats");
	        var imageWidthThreshold = Math.min(articleContent.offsetWidth, 800) * 0.55,
	            images              = articleContent.getElementsByTagName('img');

	        for(var i=0, il = images.length; i < il; i+=1) {
	            var image = images[i];
	            
	            if(image.offsetWidth > imageWidthThreshold) {
	                image.className += " blockImage";
	            }
	        }
	    }



function adjustTableSize(content) {
	//alert("adjustTableSize");
	var all_tables = content.getElementsByTagName("table");
	for(var i =0; i < all_tables.length;i+=1) {
		all_tables[i].outerHTML = "<div style='width:100%;overflow-x:scroll;'>"+all_tables[i].outerHTML+"</div>";
	}
}

/* Function to resize the image present inside the table.
First loop through all the tables , tds .
Create an id to table and set the property of display as none to the images.
Then craete a div dynamically and resize the image and append it to corresponding table id. 
*/


function adjustTableSizeImage(content) {

	var all_tables = content.getElementsByTagName("table");
	//for loop for all tables
	for(var i =0; i < all_tables.length;i+=1) {
		all_tables[i].id = "table_image_div_"+i;
		var all_tds = all_tables[i].getElementsByTagName("td");
		//for loop for all td
		for(var itd =0; itd < all_tds.length;itd+=1) {
			var imageInTable = all_tds[itd].getElementsByTagName("img");
			if(imageInTable.length > 0) {	
			  	//for loop for all images
				for(var im =0; im < imageInTable.length;im+=1) {
					imageInTable[im].style.display = 'none';
					var imageDiv = document.createElement("DIV");
					var image_table_width = window.innerWidth-20;
					imageDiv.innerHTML = "<img src="+imageInTable[im].src+" style='width:"+image_table_width+"px;'>";
					document.getElementById("table_image_div_"+i).appendChild(imageDiv);
				}
			}
			
		}	
		
	}
}
/*
function adjustTableSizeImage(content) {

	var all_tables = content.getElementsByTagName("table");
	//for loop for all tables
	for(var i =0; i < all_tables.length;i+=1) {
		all_tables[i].id = "table_image_div_"+i;
		var all_tds = all_tables[i].getElementsByTagName("td");
		//for loop for all td
		for(var itd =0; itd < all_tds.length;itd+=1) {
			var imageInTable = all_tds[itd].getElementsByTagName("img");
			if(imageInTable.length > 0) {	
			  	//for loop for all images
				for(var im =0; im < imageInTable.length;im+=1) {
					imageInTable[im].style.display = 'none';
					var imageDiv = document.createElement("DIV");
					var img = imageInTable[im];
		   			var image_width = img.width;
		   			var image_height = img.height;
		   			var ratio = img.height / img.width;
		   			var max_width = 250;
		   			var max_height = 250;
		   			var image_src = img.src;
		   				if(image_width >= max_width && ratio <= 1){
		   					image_width = max_width;
		   					image_height = image_width * ratio;
			  			}
			  		 	else if(image_height >= max_height){
			   				image_height = max_height;
			   				image_width = image_height / ratio;
			  			}
			   
			  		//this.style.width=image_width+'px';
			 		//this.style.height=image_height+'px';	
			 		//this.style.display="block";
					//this.style.marginLeft="auto";
		        		//this.style.marginRight="auto";
		        		//this.style.marginTop="1px";
		        		//this.style.marginBottom="1px";
		        		image_table_width = image_width;
		        		image_table_height = image_height;
			 		
					imageDiv.innerHTML = "<img src="+imageInTable[im].src+" style='width:"+image_table_width+"px;height:"+image_table_width+"px;'>";
					document.getElementById("table_image_div_"+i).appendChild(imageDiv);
				}
			}
			
		}	
		
	}
}
*/
function adjustVideoSize(articleContent) {
	var all_videos = articleContent.getElementsByTagName("object");
	var video_link, video_id ,video_embed;
	var video_width = '100%';
	for(var i =0; i < all_videos.length;i+=1) {
		video_embed = all_videos[i].getElementsByTagName("embed")[0];
		video_link = all_videos[i].getElementsByTagName("embed")[0].src;
                if (video_link.search(regexps.videos) !== -1) {
			video_id = video_link.split("/v/")[1].split("?")[0];
			all_videos[i].id = "video_"+video_id;
			video_embed.style.display = 'none';
			var videoDiv = document.createElement("DIV");
			//added on Dec 5 2011 to solve the video issue.Replace the play image above the video
			videoDiv.innerHTML = "<span><span><img width="+video_width+"  src='http://i2.ytimg.com/vi/"+video_id+"/default.jpg'></span><a style='position:relative;' href='http://www.youtube.com/watch?v="+video_id+"'><img style='position:absolute;right:1px;padding-right:40%;padding-top:30%;border-style:none;' src='file:///android_asset/play.png'></a></span>";
			document.getElementById("video_"+video_id).appendChild(videoDiv);
			
			
                }
	}
}

/**
     * Get the density of links as a percentage of the content
     * This is the amount of text that is inside a link divided by the total text in the node.
     * 
     * @param Element
     * @return number (float)
    **/
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
/**
     * Initialize a node with the readability object. Also checks the
     * className/id for special names to add to its score.
     *
     * @param Element
     * @return void
    **/
function initializeNode(node) {
        node.readability = {"contentScore": 0};         

        switch(node.tagName) {
            case 'DIV':
                node.readability.contentScore += 5;
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
	
/**
     * Get the inner text of a node - cross browser compatibly.
     * This also strips out any excess whitespace to be found.
     *
     * @param Element
     * @return string
    **/
     function getInnerText(e, normalizeSpaces) {
        var textContent    = "";

        if(typeof(e.textContent) === "undefined" && typeof(e.innerText) === "undefined") {
            return "";
        }

        normalizeSpaces = (typeof normalizeSpaces === 'undefined') ? true : normalizeSpaces;
	//Added by SISO to ignore the script tags in scoring for text content
	e = e.cloneNode(true);
	if (e.nodeType != 3) {
		clean(e, "script");
	}

        if (navigator.appName === "Microsoft Internet Explorer") {
            textContent = e.innerText.replace( regexps.trim, "" ); }
        else {
            textContent = e.textContent.replace( regexps.trim, "" ); }
        if(normalizeSpaces) {
            return textContent.replace( regexps.normalize, " "); }
        else {
            return textContent; }
    }

/***
     * grabArticle - Using a variety of metrics (content score, classname, element types), find the content that is
     *               most likely to be the stuff a user wants to read. Then return it wrapped up in a div.
     *
     * @param page a document to run upon. Needs to be a full document, complete with body.
     * @return Element
    **/	
	
 function grabArticle(page) {
	
        /*var stripUnlikelyCandidates = readability.flagIsActive(readability.FLAG_STRIP_UNLIKELYS),
            isPaging = (page !== null) ? true: false;*/

        page = page ? page : document.body;

       /* var pageCacheHtml = page.innerHTML;*/

        var allElements = page.getElementsByTagName('*');

        /**
         * First, node prepping. Trash nodes that look cruddy (like ones with the class name "comment", etc), and turn divs
         * into P tags where they have been used inappropriately (as in, where they contain no other block level elements.)
         *
         * Note: Assignment from index for performance. See http://www.peachpit.com/articles/article.aspx?p=31567&seqNum=5
         * TODO: Shouldn't this be a reverse traversal?
        **/
        var node = null;
        var nodesToScore = [];
        for(var nodeIndex = 0; (node = allElements[nodeIndex]); nodeIndex+=1) {
            // Remove unlikely candidates 
           /* if (stripUnlikelyCandidates) {
                var unlikelyMatchString = node.className + node.id;
                if (
                    (
                        unlikelyMatchString.search(readability.regexps.unlikelyCandidates) !== -1 &&
                        unlikelyMatchString.search(readability.regexps.okMaybeItsACandidate) === -1 &&
                        node.tagName !== "BODY"
                    )
                )
                {
                    dbg("Removing unlikely candidate - " + unlikelyMatchString);
                    node.parentNode.removeChild(node);
                    nodeIndex-=1;
                    continue;
                }               
            }*/

            if (node.tagName === "P" || node.tagName === "TD" || node.tagName === "PRE") {
                 nodesToScore[nodesToScore.length] = node;
            }

            // Turn all divs that don't have children block level elements into p's 
           if (node.tagName === "DIV") {
                if (node.innerHTML.search(regexps.divToPElements) === -1) {
                   //var newNode = document.createElement('p');
                    try {
                      /* newNode.innerHTML = node.innerHTML;             
                        node.parentNode.replaceChild(newNode, node);
                        nodeIndex-=1; modified SISO*/
                        nodesToScore[nodesToScore.length] = node;/*Add those node element divs for scoring, which dont cihldren blocks*/
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
                           /* //var p = document.createElement('p');
                            p.innerHTML = childNode.nodeValue;
	                            p.style.display = 'inline';
                            p.className = 'readability-styled';
                            childNode.parentNode.replaceChild(p, childNode); modified SISO*/
                        nodesToScore[nodesToScore.length] = childNode;/*Add all the text node elements to score*/
                        }
                    }
                }
            } 
        }

        /**
         * Loop through all paragraphs, and assign a score to them based on how content-y they look.
         * Then add their score to their parent node.
         *
         * A score is determined by things like number of commas, class names, etc. Maybe eventually link density.
        **/
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

          /*  dbg('Candidate: ' + candidates[c] + " (" + candidates[c].className + ":" + candidates[c].id + ") with score " + candidates[c].readability.contentScore);*/

            if(!topCandidate || candidates[c].readability.contentScore > topCandidate.readability.contentScore) {
                topCandidate = candidates[c]; }
        }

        /**
         * If we still have no top candidate, just use the body as a last resort.
         * We also have to copy the body node so it is something we can modify.
         **/
        if (topCandidate === null || topCandidate.tagName === "BODY")
        {
            topCandidate = document.createElement("DIV");
            topCandidate.innerHTML = page.innerHTML;
            page.innerHTML = "";
            page.appendChild(topCandidate);
            initializeNode(topCandidate);
        }

        /**
         * Now that we have the top candidate, look through its siblings for content that might also be related.
         * Things like preambles, content split by ads that we removed, etc.
        **/
        var articleContent        = document.createElement("DIV");
        /*if (isPaging) {*/
            articleContent.id     = "readability-content";
        /*}*/
        var siblingScoreThreshold = Math.max(10, topCandidate.readability.contentScore * 0.2);
        var siblingNodes          = topCandidate.parentNode.childNodes;


        for(var s=0, sl=siblingNodes.length; s < sl; s+=1) {
            var siblingNode = siblingNodes[s];
            var append      = false;

            /**
             * Fix for odd IE7 Crash where siblingNode does not exist even though this should be a live nodeList.
             * Example of error visible here: http://www.esquire.com/features/honesty0707
            **/
            if(!siblingNode) {
                continue;
            }

           /* dbg("Looking at sibling node: " + siblingNode + " (" + siblingNode.className + ":" + siblingNode.id + ")" + ((typeof siblingNode.readability !== 'undefined') ? (" with score " + siblingNode.readability.contentScore) : ''));
            dbg("Sibling has score " + (siblingNode.readability ? siblingNode.readability.contentScore : 'Unknown'));*/

            if(siblingNode === topCandidate)
            {
                append = true;
            }

            var contentBonus = 0;
            /* Give a bonus if sibling nodes and top candidates have the example same classname */
            if(siblingNode.className === topCandidate.className && topCandidate.className !== "") {
                contentBonus += topCandidate.readability.contentScore * 0.2;
            }

            if(typeof siblingNode.readability !== 'undefined' && (siblingNode.readability.contentScore+contentBonus) >= siblingScoreThreshold)
            {
                append = true;
            }
            
            if(siblingNode.nodeName === "P") {
                var linkDensity = getLinkDensity(siblingNode);
                var nodeContent = getInnerText(siblingNode);
                var nodeLength  = nodeContent.length;
                
                if(nodeLength > 80 && linkDensity < 0.25)
                {
                    append = true;
                }
                else if(nodeLength < 80 && linkDensity === 0 && nodeContent.search(/\.( |$)/) !== -1)
                {
                    append = true;
                }
            }

            if(append) {
                //dbg("Appending node: " + siblingNode);

                var nodeToAppend = null;
                if(siblingNode.nodeName !== "DIV" && siblingNode.nodeName !== "P") {
                    /* We have a node that isn't a common block level element, like a form or td tag. Turn it into a div so it doesn't get filtered out later by accident. */
                    
                    //dbg("Altering siblingNode of " + siblingNode.nodeName + ' to div.');
                    nodeToAppend = document.createElement("DIV");
                    try {
                        nodeToAppend.id = siblingNode.id;
                        nodeToAppend.innerHTML = siblingNode.innerHTML;
                    }
                    catch(er) {
                        //dbg("Could not alter siblingNode to div, probably an IE restriction, reverting back to original.");
                        nodeToAppend = siblingNode;
                        s-=1;
                        sl-=1;
                    }
                } else {
                    nodeToAppend = siblingNode;
                    /*s-=1;
                    sl-=1; modified SISO, its done to prevent continuos looping*/
                }
                
                /* To ensure a node does not interfere with readability styles, remove its classnames */
                nodeToAppend.className = ""; /*  modified SISO, to clean the classname styles of the default page*/

                /* Append sibling and subtract from our list because it removes the node when you append to another node */
                //articleContent.appendChild(nodeToAppend);
				articleContent.appendChild(nodeToAppend.cloneNode(true));/*  modified SISO, To prevent the original page conten to get modified*/
            }
        }

        /**
         * So we have all of the content that we need. Now we clean it up for presentation.
        **/

      prepArticle(articleContent);//imp step in cleaning the content
			/* SISO This is done to undefine the readability scores for all the elements*/
			for (var pt=0; pt < nodesToScore.length; pt+=1) {
			    var parentNode      = nodesToScore[pt].parentNode;
			    var grandParentNode = parentNode ? parentNode.parentNode : null;
				delete parentNode.readability;
				//added on Dec 5 2011 to solve the multiple page issue.
				if (grandParentNode) {
					delete grandParentNode.readability;
				}
			}

       /* if (readability.curPageNum === 1) {
            articleContent.innerHTML = '<div id="readability-page-1" class="page">' + articleContent.innerHTML + '</div>';
        }*/

        /**
         * Now that we've gone through the full algorithm, check to see if we got any meaningful content.
         * If we didn't, we may need to re-run grabArticle with different flags set. This gives us a higher
         * likelihood of finding the content, and the sieve approach gives us a higher likelihood of
         * finding the -right- content.
        **/
       /* if(readability.getInnerText(articleContent, false).length < 250) {
        page.innerHTML = pageCacheHtml;

            if (readability.flagIsActive(readability.FLAG_STRIP_UNLIKELYS)) {
                readability.removeFlag(readability.FLAG_STRIP_UNLIKELYS);
                return readability.grabArticle(page);
            }
            else if (readability.flagIsActive(readability.FLAG_WEIGHT_CLASSES)) {
                readability.removeFlag(readability.FLAG_WEIGHT_CLASSES);
                return readability.grabArticle(page);
            }
            else if (readability.flagIsActive(readability.FLAG_CLEAN_CONDITIONALLY)) {
                readability.removeFlag(readability.FLAG_CLEAN_CONDITIONALLY);
                return readability.grabArticle(page);
            } else {
                return null;
            }
        }*/
		if( articleContent.innerHTML == '' )
		{
			return " " ;
		}
		
		/*articleContent=articleContent.childNodes[0]; SISO Commented as there are no repeating childnodes */
		return articleContent.innerHTML;
 
    }
  function adjustWidth(articleContent) {
	  
		articleContent = articleContent? articleContent:document.body;
		adjustImageSize(articleContent);
		adjustVideoSize(articleContent);
		adjustTableSize(articleContent);
		adjustTableSizeImage(articleContent);
		
		
	 
 }
  function adjustWidthForFirstPage(articleContent) {
	  
	 	 //   alert("adjustWidth");
			articleContent = articleContent? articleContent:document.body;
		//	alert("adjustWidth" + articleContent.innerHTML);
			adjustImageSizeForFirstPage(articleContent);
			adjustVideoSize(articleContent);
			adjustTableSize(articleContent);
			adjustTableSizeImage(articleContent);
			
			
		 
	 }

/***
     * getArticleTitle - Comapring the title tag with all headernodes
     *
     * @return header content
    **/		
function getArticleTitle() {
	var header_node = getHeaderNode();
	if (header_node != null){
		return header_node.textContent;
	}
	else {
		return document.getElementsByTagName("title")[0].textContent;
	}
}

function getHeaderNode() {
	var title = document.getElementsByTagName("title")[0].textContent;
	var all_header_tags = document.getElementsByTagName("h1");
	var selected_header_node = null;
	for (var i=0;i<all_header_tags.length;i++) {
		var header_node = all_header_tags[i];
		var header_content = all_header_tags[i].textContent;
        if ( (header_content!="") && (title.search(header_content) != -1)) {
			selected_header_node = header_node;
			break;
		}
	}
	return selected_header_node;
}

//function submit() {alert("submit"); var test_div = document.createElement('div');test_div.innerHTML='Congratulations! This is the appended div in Webview';document.getElementsByTagName('body')[0].appendChild(test_div); }
//function submitNew() {alert(test);grabArticle(); }//var test_div = document.createElement('div');test_div.innerHTML='Congratulations! This is the appended div in Webview';document.getElementsByTagName('body')[0].appendChild(test_div); }
function initReader() {
	
	var article_block = grabArticle();
	//var reader_html = document.createElement("html");
	//var reader_body = document.createElement("body");
	//reader_html.appendChild(reader_body);
	var reader_div = document.createElement("div");
	reader_div.id = "reader_div";
	reader_div.style.display='none';
	
	if (article_block) {
		//var reader_script = document.createElement("script");
		//reader_script.type='text/javascript';

		//reader_script.src="/sdcard/reader.js";
		//reader_script.innerHTML = "console.log(document.body.html);var test_div = document.createElement('div');test_div.innerHTML='Congratulations this is the appended div in Webview';document.body.appendChild(test_div);";
	//	reader_script.innerHTML ="function submit() {alert(document.body.innerHTML); }";
	//	reader_script.innerHTML ="function submit() { var test_div = document.createElement('div');test_div.innerHTML='Congratulations! This is the appended div in Webview';document.getElementsByTagName('body')[0].appendChild(test_div); } ";
	//	reader_script.innerHTML ="webview_script = document.createElement('script');webview_script.type='text/javascript';webview_script.src='/sdcard/reader.js';document.getElementsByTagName('head')[0].appendChild();  ";
		
	//	reader_div.appendChild(reader_script);
		
		var reader_script = document.createElement("script");
		reader_script.type='text/javascript';
		parsedPages[window.location.href.replace(/\/$/, '')] = true;
		var nextPageLink = findNextPageLink(document.body);
		

		reader_div.appendChild(reader_script);
		var reader_title_div = document.createElement("div");/*title*/
		var reader_header = document.createElement("h1");
		reader_header.textContent=getArticleTitle();
		reader_title_div.appendChild(reader_header);
		reader_div.appendChild(reader_title_div);
		var reader_content_div = document.createElement("div");/*Content block*/
		//reader_content_div.innerHTML = article_block+"<input type='button' value='Test' onclick='submit();'/>";
		reader_content_div.innerHTML = article_block;//+nextPageLink;//+"<input type='button' value='Test' onclick='submitNew();'/>";
		reader_content_div.innerHTML = "<div id='readability-page-1' class='page'>"+article_block+"</div>";
		reader_div.appendChild(reader_content_div);
		reader_content_div.outerHTML += nextPageLink;
		//reader_body.appendChild(reader_div);
	//	alert(reader_div.innerHTML);
		//android.sendToAndroid(reader_div.innerHTML);
	}
	else {
		reader_div.innerHTML = "<h1>Sorry!</h1><p>This page is not able to be processed by Reader</p>";
	}
	document.getElementsByTagName("body")[0].appendChild(reader_div);
	//alert(reader_div.innerHTML);
		
  //document.getElementsByTagName("body")[0].removeChild(reader_div);
}



