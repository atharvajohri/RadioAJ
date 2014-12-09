define([], function() {
	var player = {
			
		initYoutubeAPI : function(onSuccess){
			if (typeof (YT) === 'undefined' || typeof (YT.Player) === 'undefined') {
				window.onYouTubeIframeAPIReady = function() {
					onSuccess && typeof onSuccess === "function" && onSuccess();
				};

				$.getScript('//www.youtube.com/iframe_api');
			}else{
				onSuccess && typeof onSuccess === "function" && onSuccess();
			}
		},

		loadPlayer : function(container, videoId) {
			new YT.Player(container, {
				videoId : videoId,
				width : 650,
				height : 370,
				playerVars : {
					autoplay : 1,
					controls : 0,
					modestbranding : 1,
					rel : 0,
					showInfo : 0
				}
			});
		}
	};

	return player;
});