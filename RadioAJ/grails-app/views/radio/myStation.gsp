<!doctype HTML>

<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Alternate YouTube viewing BETA for those who can't Tube</title>
		<style>
			.common-container {background:#fafafa;padding:10px;margin:5px;font-family:"Open Sans", sans-serif; font-size:12px}
			.player-container {background:#fff}
			.title-container b {font-size:16px;}
			#player-aj {background:#cdcdcd;border-radius:3px;}
		</style>
		<script>
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
					$.ajax({
						url: "/radio/getAllTracks",
						type: "GET",
						success: function(response){
							if (response && response.videoIdList.length > 0){
								console.log("successfully retrieved video ids");
								videoIdList = Utils.shuffleArray(response.videoIdList);
								playNextVideo();
							}
						},
						error: function(){
							console.log("failed to get video ids");
						}
					});
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
							}
						});
					}
				}

				function playMedia(url){
					var player = document.getElementById("player-aj");
					player.src = url;
					player.play();
					$("title").prepend(videoIdList[currentIndex].title + " [" + videoIdList[currentIndex].artist + "]");
				}
				
				function playNextVideo(){
					if (videoIdList && currentIndex < videoIdList.length){
						var videoId = videoIdList[currentIndex].videoId;
						checkIfFileExists(videoId, function(){
							playMedia("/video/"+videoId+".mp3");
						}, function(){
							getVideo(videoId, "http://www.youtube.com/watch?v="+videoId);
						});
						
					}
				}

				function checkIfFileExists(videoId, succ, err){
					$.ajax({
						type: 'GET', 
						url:'/video/'+videoId+'.mp3', 
						success: function(){succ && succ()}, 
						error: function(){err && err()}
					});
				}
				
				var player = document.getElementById("player-aj");
				player.onended = function(e){
					currentIndex++;
					playNextVideo();
				};
			});
		})(jQuery);
		</script>
	</head>
	<body>
		<div class="common-container title-container">
			<input type="button" id="start-player" value="Start Listening" />
		</div>
		<div class="common-container">
			<b>URL takes preference over keyword if you enter both..!</b>
			<br>
			Enter URL: <input type="text" id="video-url" /> Eg. http://www.youtube.com/watch?v=h0G1Ucw5HDg 
			<br>OR<br>
			Enter Search Keyword/s: <input type="text" id="video-keyword" /><br><br>
			<input type="button" value="Click to Search" id="search-video">
		</div>
		<div class="common-container player-container">
			<video id="player-aj" width="640" height="0" controls></video>
		</div>
		<div class="common-container">
			<b>EXTREMELY IMPORTANT!!!</b><br>
			<b>If you liked this program, do let <a href="https://www.facebook.com/atharva.johri">Atharva</a> know by buying him dark chocolate or lunch :)</b>
		</div>
	</body>
</html>