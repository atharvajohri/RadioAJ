<!doctype HTML>

<html>
	<head>
		<meta name="layout" content="main"/>
		<title>RadioJohri: An online Radio Station by Atharva!</title>
		<style>
			.common-container {background:#fafafa;padding:10px;margin:5px;font-family:"Open Sans", sans-serif; font-size:12px}
			.player-container {background:#fff;overflow:auto;text-align:center;}
			.title-container {font-size:15px;}
			.title-container b {font-size:16px;}
			
			#player-aj {background:#cdcdcd;border-radius:3px;margin-top:35px;}
			#track-details-container {padding:10px;background:#dedede;text-align: left;}
			#track-details-container th {width:70px}
			
			#start-button-container {text-align:center;margin:10px;}
			.station-button {padding:10px;font-size:30px;color:#888;background:#37FDFC;border-radius:3px;cursor:pointer;}
			
			.less-padding {padding: 5px;font-size:20px}
		</style>
	</head>
	<body>
		<div class="common-container title-container">
			This is a collection of some of my favorite tunes from 2014. If you want some more songs here, just drop a mail to me @ [johri.atharva@gmail.com] 
			<br>
			<div id="start-button-container">
				<input type="button" id="start-player" class="station-button" value="Start Listening" />
			</div>
		</div>
		<div class="common-container player-container">
			<video id="player-aj" width="640" height="0" controls></video>
			<div id="track-details-container" class="hide">
				<b>Now Playing:</b>
				<table>
					<tr>
						<th>Title</th><td class='title-cell'></td>
					</tr>
					<tr>
						<th>Artist</th><td class='artist-cell'></td>
					</tr>
					<tr>
						<th>Album</th><td class='album-cell'></td>
					</tr>
				</table>
			</div>
			<div>
				<input type="button" id="skip-track" class="station-button less-padding" value="Skip" />
			</div>
			<br>
			<div id="track-info-container">
				
			</div>
		</div>
		<div class="common-container">
			<b>IMPORTANT!</b><br>
			<b>If you liked this program, do let <a href="https://www.facebook.com/atharva.johri">Atharva</a> know!</b>
		</div>
		
		<asset:javascript src="modules/radio/station.js" />	
	</body>
</html>