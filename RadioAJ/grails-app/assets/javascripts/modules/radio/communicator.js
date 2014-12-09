/*
 * THiS IS THE RADIO COMMUNICATOR
 */

define([], function(){
	
	var stompClient;
	
	function init(wsConnectedCallback){
		console.log ("This project is still in BETA. You will see all logs here. If you find a bug, drop me a mail [johri.atharva@gmail.com]");
		console.log ("Communications switching on..");
		
		startupWS(wsConnectedCallback);
	}
	
	function startupWS(wsConnectedCallback){
		var socket = new SockJS("/stomp");
		stompClient = Stomp.over(socket);

		stompClient.connect({}, function() {
			console.log("Connected to server!");
			stompClient.subscribe("/topic/hello", function(message) {
				console.log("Communications succeeded!");
				OpenOpts.Comm.ws = true;
				wsConnectedCallback && typeof wsConnectedCallback === "function" && wsConnectedCallback();
			});
		});

		testWSCommunications(wsConnectedCallback);
	}
	
	function testWSCommunications(wsConnectedCallback){
		console.log("Testing server communication..");
		setTimeout(function(){
			stompClient.send("/app/hello", {}, JSON.stringify({"test": "message"}));
        }, 500);
	}

	
	
	var Listen = {
		hear: function(){
			
		}
	};
	
	var Speak = {
		ask: function(url, data, callbacks){
			makeAJAXRequest("GET", url, data, callbacks);
		},
		tell: function(url, data, callbacks){
			makeAJAXRequest("POST", url, data, callbacks);
		}	
	};
	
	function makeAJAXRequest(type, url, data, callbacks){
		url === "songs" ? "/radio/"
		$.ajax({
			type: type,
			url: url,
			data: data,
			success: callbacks && callbacks.success && callbacks.success(),
			error: callbacks && callbacks.error && callbacks.error(),
			complete: callbacks && callbacks.complete && callbacks.complete(),
		});
	}
	
	return {
		init: init,
		Listen: Listen,
		Speak: Speak
	}
});