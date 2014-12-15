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
								alert("Something went wrong. <br> Worry not! Everything is logged to the server, and will be fixed with the next inspection!");
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
			<b>Atharva's anytime YouTube player!</b>
			<br>
			This is BETA project developed while building <b>RadioAJ</b>, an online Radio station based on YouTube.<br> 
			If you want to contribute, drop a mail to da man: [ johri.atharva@gmail.com ]<br>
			<br>
			To learn to live with an aberration is to become a part of the aberration yourself. 
		</div>
		<div class="common-container">
			<b>URL takes preference over keyword if you enter both..!</b>
			<br>
			Enter URL: <input type="text" id="video-url" /> 
			<br>OR<br>
			Enter Search Keyword/s: <input type="text" id="video-keyword" /><br><br>
			<input type="button" value="Click to Search" id="search-video">
		</div>
		<div class="common-container player-container">
			<video id="player-aj" width="640" height="360" controls></video>
		</div>
		<div class="common-container">
			<b>EXTREMELY IMPORTANT!!!</b>
			<b>If you liked this program, do let <a href="https://www.facebook.com/atharva.johri">Atharva</a> know by buying him lunch :D</b>
		</div>
	</body>
</html>