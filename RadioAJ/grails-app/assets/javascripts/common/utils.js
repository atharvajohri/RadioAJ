//This file holds Utility functions used for the controller

//this is an object which holds commonly used DOM elements 
var GlobalElements = {
	overlay : document.getElementById("global-overlay")
};

var Utils = {};
var BindingUtils = {};
var ElementUtils = {};

Utils.isBrowserChrome = function(){
	return window.chrome ? true : false;
};

Utils.shuffleArray = function(array) {
    var counter = array.length, temp, index;

    // While there are elements in the array
    while (counter > 0) {
        // Pick a random index
        index = Math.floor(Math.random() * counter);

        // Decrease counter by 1
        counter--;

        // And swap the last element with it
        temp = array[counter];
        array[counter] = array[index];
        array[index] = temp;
    }

    return array;
};

//show an overlay behind a popup to disable actions external to the popup
Utils.showOverlay = function(){ 
	Utils.removeClass(GlobalElements.overlay, "hide");
};

//show an overlay behind a popup to disable actions external to the popup
Utils.hideOverlay = function(){ 
	Utils.addClass(GlobalElements.overlay, "hide");
};

Utils.removeClass = function(element, className){
	$(element).removeClass(className);
};

Utils.addClass = function(element, className){
	$(element).addClass(className);
};

//highlight a text box with a red border when validation fails
Utils.errorHighlightTextBox = function(element){ 
	Utils.addClass(element, "error-input");
	element.addEventListener("click", function(){
		Utils.removeClass(element, "error-input");
	});
};

//reposition a DOM element horizonatally, can do vertically also if 'heightAlso' parameter is passed as true
Utils.repositionContainer = function(container, heightAlso){ 
	var w_w = window.innerWidth;
	var w_h = window.innerHeight;
	
	var c_w = Number(window.getComputedStyle(container).width.toString().replace("px", "")) + 60; //40 to account for padding
	var c_h = Number(window.getComputedStyle(container).height.toString().replace("px", "")) + 60;
	
	container.style.left = ((w_w - c_w)/2) + "px";
	if (heightAlso){
		container.style.top = ((w_h - c_h)/2) + "px";		
	}
};
//generate a random numeric number for id
Utils.getRandomId = function(customScale){
	return Math.floor(Math.random()* (customScale || 99999));
};

//is input string a hex color like #123456?
Utils.isHexColor = function (inputString){
	return /(^#[0-9A-F]{6}$)|(^#[0-9A-F]{3}$)/i.test('#'+inputString);
};


//checks if browser is Internet Explorer
Utils.isBrowserIE = function(){
	var ua = window.navigator.userAgent;
    var msie = ua.indexOf("MSIE ");

    var isIE = false;
    
    if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)){
    	isIE = true;
    }
        
    return isIE;
};

//return an XMLHttpRequestObject for making ajax requests
Utils.getAjaxRequestObject = function(){
	var activexmodes=["Msxml2.XMLHTTP", "Microsoft.XMLHTTP"]; //activeX versions to check for in IE
	if (window.ActiveXObject){ //Test for support for ActiveXObject in IE first (as XMLHttpRequest in IE7 is broken)
		for (var i=0; i<activexmodes.length; i++){
			return new ActiveXObject(activexmodes[i]);
	  	}
	}else if (window.XMLHttpRequest){ // if Mozilla, Safari etc
		return new XMLHttpRequest();
	}
	
	alert("Sorry! Your browser does not support ajax.");
};
