var GlobalElements={overlay:document.getElementById("global-overlay")},Utils={},BindingUtils={},ElementUtils={};Utils.isBrowserChrome=function(){return window.chrome?!0:!1},Utils.showOverlay=function(){Utils.removeClass(GlobalElements.overlay,"hide")},Utils.hideOverlay=function(){Utils.addClass(GlobalElements.overlay,"hide")},Utils.removeClass=function(element,className){$(element).removeClass(className)},Utils.addClass=function(element,className){$(element).addClass(className)},Utils.errorHighlightTextBox=function(element){Utils.addClass(element,"error-input"),element.addEventListener("click",function(){Utils.removeClass(element,"error-input")})},Utils.repositionContainer=function(container,heightAlso){var w_w=window.innerWidth,w_h=window.innerHeight,c_w=Number(window.getComputedStyle(container).width.toString().replace("px",""))+60,c_h=Number(window.getComputedStyle(container).height.toString().replace("px",""))+60;container.style.left=(w_w-c_w)/2+"px",heightAlso&&(container.style.top=(w_h-c_h)/2+"px")},Utils.getRandomId=function(customScale){return Math.floor(Math.random()*(customScale||99999))},Utils.isHexColor=function(inputString){return/(^#[0-9A-F]{6}$)|(^#[0-9A-F]{3}$)/i.test("#"+inputString)},Utils.isBrowserIE=function(){var ua=window.navigator.userAgent,msie=ua.indexOf("MSIE "),isIE=!1;return(msie>0||navigator.userAgent.match(/Trident.*rv\:11\./))&&(isIE=!0),isIE},Utils.getAjaxRequestObject=function(){var activexmodes=["Msxml2.XMLHTTP","Microsoft.XMLHTTP"];if(window.ActiveXObject)for(var i=0;i<activexmodes.length;i++)return new ActiveXObject(activexmodes[i]);else if(window.XMLHttpRequest)return new XMLHttpRequest;alert("Sorry! Your browser does not support ajax.")};