<!doctype HTML>

<html>
	<head>
		<meta name="layout" content="main"/>
		<style>
			.common-container {background:#fafafa;padding:10px;margin:15px;font-family:"Open Sans", sans-serif; font-size:12px; border-radius: 5px;}
			.player-container {background:#fff; text-align:center}
			.title-container b {font-size:16px;}
			#player-aj {background:#cdcdcd;border-radius:3px;margin-top:45px;}
		</style>
		<script>
		(function($){
			$(document).ready(function(){
				GlobalElements.overlay = document.getElementById("global-overlay")
				$("#search-music").click(function(){
					var title = $("#song-title").val();
					var artist = $("#song-artist").val();

					if (title || artist){
						Utils.showOverlay();
						$.ajax({
							url: "/getMusic",
							type: "POST",
							data: {keyword: (title || "") + " " + (artist || "") },
							success: function(response){
								if (response.fileName && response.fileName.toString() !== "false"){
									//found!
									var videoURL = "/video/"+response.fileName+".mp3";
									var player = document.getElementById("player-aj");
									player.src = videoURL;
									player.play();
								}else{
									alert("Can't find what you're looking for (and I've not found what I'm looking for). \n Server said: " + (response.error || '') );
								}
							},
							error: function(response){
								alert("Something went wrong. \n Worry not! Everything is logged to the server, and will be fixed with the next inspection!");
							},
							complete: function(){
								Utils.hideOverlay();
							}
						});
					}
				});
			});
		})(jQuery);
		</script>
	</head>
	<body>
		<div class="common-container title-container">
			<b>SongPicker</b>
		</div>
		<div class="common-container">
			<table style="width: 320px">
				<tr>
					<td>Song Title:</td><td><input type="text" id="song-title" /></td>
				</tr>
				<tr>
					<td>Song Artist/Singer:</td><td><input type="text" id="song-artist" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" value="Click to Search" id="search-music"></td>
				</tr>
			</table>
		</div>
		<div class="common-container player-container">
			<video id="player-aj" width="640" height="0" controls></video>
		</div>
	</body>
</html>