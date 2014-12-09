<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>RadioAJ</title>
		
    	<asset:javascript src="spring-websocket" />
	</head>
	<body>
		
		<div id="radio-container">
			<div id="track-info-container">
				<span id="track-info-header">Now Playing:</span>
				<span class="ellipsificable" id="ti-title"></span>
				<span class="ellipsificable" id="ti-album"></span>
				<span class="ellipsificable" id="ti-artist"></span>
				<span class="ellipsificable" id="ti-genre"></span>
			</div>
			<div id="radio-viewport">
				<div id="radio">
				
				</div>
				<div id="track-queue-container">
				
				</div>
			</div>
			<div id="track-details-container">
			
			</div>
		</div>
		
		<asset:javascript src="frameworks/require.min.js" data-main="${resource(dir: 'assets/javascripts', file: 'radio.js')}" />
		<asset:deferredScripts/>
	</body>
</html>