requirejs.config({
	baseUrl : "assets",
	paths: {
		"radio": "modules/radio"
	}
});

require(["radio/controls"], function(_controls){
	_controls.activate();
});
