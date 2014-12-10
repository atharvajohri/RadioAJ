/*
 * THESE ARE THE RADIO CONTROLS
 */

define(["radio/communicator", "models/radioModels"], function(_comm, _radioModels){
	
	//such global much explicit
	var g_radio;
	
	function activate(){
		Utils.showOverlay();
		g_radio = new _radioModels.Radio();
		
		if (Utils.isBrowserChrome()){
			console.log("Asking for songs to queue..");
			_comm.Speak.ask("/getTracks", {offset: g_radio.offset()}, {
				success: function(response){
					if (response.songList && response.songList.length > 0){
						g_radio.offset(response.offset);
						g_radio.songsQueued(response.songList);
						
						console.log(".. songs received.")
						console.log("\nLoading YouTube player...");
						require(["modules/loaders/youtubePlayer"], function(_player){
							_player.initYoutubeAPI(function(){
								g_radio.player(document.getElementById("radio"));
								_player.loadPlayer(g_radio.player(), "", function(value){
									console.log("player state change " + value);
								})
								
								g_radio.playNext();
								
							});
						});
					}
				}
			});
		}else{
			alert("No Chrome! Get Chrome :)");
		}
	}
	
	return {
		activate: activate
	};
	
});