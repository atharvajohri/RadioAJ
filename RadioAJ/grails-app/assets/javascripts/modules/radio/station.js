window.playLeastHeard = true;

(function($){

	var videoIdList = [];
	var currentIndex = 0;
	
	$(document).ready(function(){
		GlobalElements.overlay =document.getElementById("global-overlay")
		$("#search-video").click(function(){
			var url = $("#video-url").val();
			var kw = $("#video-keyword").val();

			getVideo(url, kw);
		});

		//get videoIds
		$("#start-player").click(function() {
			Utils.showOverlay();
			$.ajax({
				url: "/radio/getAllTracks",
				type: "GET",
				success: function(response){
					if (response && response.videoIdList.length > 0){
						videoIdList = Utils.shuffleArray(response.videoIdList);
						$("#track-details-container").removeClass("hide");
						$("#start-player").val("Reshuffle Tracks");
						playNextVideo();
					}
				},
				error: function(){
					console.log("failed to get video ids");
				},
				complete: function(){
					Utils.hideOverlay();
				}
			});
		});
		
		$("#skip-track").on("click", function(){
			currentIndex++;
			playNextVideo();
		});

		function getVideo(videoId, url, kw){
			if (videoId || url || kw){
				Utils.showOverlay();
				$.ajax({
					url: "/getYouTube",
					type: "POST",
					data: {videoId: videoId, url: url, keyword: kw, audio: true},
					success: function(response){
						if (response.fileName && response.fileName.toString() !== "0"){
							//found!
							var videoURL = "/video/"+response.fileName+".mp3";
							playMedia(videoURL);
						}else{
							alert("Can't find what you're looking for. Check the URL & keyword once more.");
						}
					},
					error: function(response){
						alert("Something went wrong. <br> Worry not! Everything is logged to the server, and will be fixed with the next inspection!");
					},
					complete: function(){
						Utils.hideOverlay();
					},
					timeout: 300000 
				});
			}
		}

		function playMedia(url){
			var player = document.getElementById("player-aj");
			player.src = url;
			player.play();
			updateTrackInformation();
		}
		
		function updateTrackInformation(){
			var c_song = window.playLeastHeard ? window.currentSong : videoIdList[currentIndex];
			$("title").html(c_song.title + " [" + c_song.artist + "]: RadioJohri - Discover new music!");
			$("#track-details-container .title-cell").html(c_song.title || "");
			$("#track-details-container .artist-cell").html(c_song.artist || "");
			$("#track-details-container .album-cell").html(c_song.album || "");
		}
		
		function playNextVideo(){
			updatePlayCount(function(){
				var videoId = "";
				if (window.playLeastHeard){
					getLeastHeardSong();
				}else{
					if (videoIdList && currentIndex < videoIdList.length){
						videoId = videoIdList[currentIndex].videoId;
					}else{
						if (videoIdList){
							currentIndex = 0;
							videoId = videoIdList[0].videoId;
						}
					}
					initiateMedia(videoId);
				}
				
			});
		}
		
		function getLeastHeardSong(){
			$.ajax({
				type: 'GET', 
				url:'/getLeastHeardSong',
				success: function(resp){
					window.currentSong = resp;
					initiateMedia(resp.videoId);
				},
				error: function(resp){
					console.log(resp);
					alert("something went wrong while getting least heard");
				}
			});
		}
		
		function initiateMedia(videoId){
			checkIfFileExists(videoId, function(){
				playMedia("/video/"+videoId+".mp3");
			}, function(){
				getVideo(videoId, "http://www.youtube.com/watch?v="+videoId);
			});
		}

		function updatePlayCount(callback){
			if (window.playLeastHeard && window.currentSong || (!window.playLeastHeard && videoIdList[currentIndex] && videoIdList[currentIndex].id)){
				var c_song = window.playLeastHeard ? window.currentSong : videoIdList[currentIndex];
				$.ajax({
					url: "/updatePlayCount?v="+c_song.id,
					complete: callback
				});	
			}else{
				callback && callback(); //continue the flow
			}
			
		}
		
		function checkIfFileExists(videoId, succ, err){
			var xhr = $.ajax({
				type: 'GET', 
				url:'/video/'+videoId+'.mp3', 
				success: function(){xhr.abort(); succ && succ()}, 
				error: function(){xhr.abort(); err && err()}
			});
		}
		
		var player = document.getElementById("player-aj");
		player.onended = function(e){
			currentIndex++;
			playNextVideo();
		};
	});
})(jQuery);