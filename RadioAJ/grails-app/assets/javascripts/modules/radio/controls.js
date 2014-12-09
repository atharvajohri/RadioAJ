/*
 * THESE ARE THE RADIO CONTROLS
 */

define(["radio/communicator"], function(_comm){
	
	var g_youtubePlayer;
	
	function activate(){
		Utils.showOverlay();
		if (Utils.isBrowserChrome()){
			console.log("\nLoading YouTube player...");
//			_comm.Speak.ask(function(songs){
//				if (songs && songs.length > 0){
					require(["modules/loaders/youtubePlayer"], function(_player){
						g_youtubePlayer = _player;
						g_youtubePlayer.initYoutubeAPI(onPlayerReady);
					});
//				}
//			});
		}else{
			alert("No Chrome!");
		}
	}
	
	function onPlayerReady(){
		console.log("... YouTube ready!");
		g_youtubePlayer.loadPlayer(document.getElementById("radio"), "");
	}
	
	return {
		activate: activate
	};
	
});