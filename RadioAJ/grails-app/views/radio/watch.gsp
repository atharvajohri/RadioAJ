<!doctype HTML>

<html>
	<head>
		<meta name="layout" content="main"/>
		<style>
			.common-container {background:#fafafa;padding:10px;margin:15px;font-family:"Open Sans", sans-serif; font-size:12px; border-radius: 5px;}
			.player-container {background:#fff; text-align:center}
			.title-container b {font-size:16px;}
			#player-aj {background:#cdcdcd;border-radius:3px;}
			.update-container {background:rgba(255,0,0,0.6)}
			.update-container b {font-weight:600;color:#fff;font-size:20px;}
			.update-container .content, .update-container .content a {color:#fff}
		</style>
		<script>
		(function($){
			$(document).ready(function(){
				GlobalElements.overlay =document.getElementById("global-overlay")
				$("#search-video").click(function(){
					var url = $("#video-url").val();
					var kw = $("#video-keyword").val();

					if (url || kw){
						Utils.showOverlay();
						$.ajax({
							url: "/getYouTube",
							type: "POST",
							data: {url: url, keyword: kw},
							success: function(response){
								if (response.fileName && response.fileName.toString() !== "0"){
									//found!
									var videoURL = "/video/"+response.fileName+".mp4";
									var player = document.getElementById("player-aj");
									player.src = videoURL;
									player.play();
								}else{
									alert("Can't find what you're looking for. Check the URL & keyword once more.");
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
		<div class="common-container update-container">
			<b>UPDATE</b>
			<div class="content">
				If you just want to search for music, and video streaming is slow, use <a href = "/songPicker">SongPicker</a>
			</div>
		</div>
		<div class="common-container title-container">
			<b>Welcome to Atharva's video player!</b>
			<br>
			This is BETA project developed while building RadioJohri, an online Radio station based on YouTube.<br> 
			If you want to contribute, drop a mail to [ johri.atharva@gmail.com ]<br>
		</div>
		<div class="common-container">
			<table>
				<tr>
					<td>Enter URL: </td><td><input type="text" id="video-url" /> Eg. http://www.youtube.com/watch?v=h0G1Ucw5HDg</td>
				</tr>
				<tr>
					<td colspan="2">OR</td>
				</tr>
				<tr>
					<td>Enter Search Keyword/s: </td><td><input type="text" id="video-keyword" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" value="Click to Search" id="search-video"></td>
				</tr>
			</table>
		</div>
		<div class="common-container player-container">
			<video id="player-aj" width="640" height="360" controls></video>
		</div>
	</body>
</html>