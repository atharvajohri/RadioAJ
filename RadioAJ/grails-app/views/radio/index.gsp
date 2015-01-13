<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
    	<asset:javascript src="spring-websocket" />
	</head>
	<body>
		<b>Under Construction</b>
		<div id="radio-container">
			<div id="track-info-container">
				<span id="track-info-header">Now Playing:</span>
				<span class="ellipsifiable" id="ti-title"></span>
				<span class="ellipsifiable" id="ti-album"></span>
				<span class="ellipsifiable" id="ti-artist"></span>
				<span class="ellipsifiable" id="ti-genre"></span>
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

		<asset:javascript src="frameworks/knockout.js" />		
		<asset:javascript src="frameworks/require.min.js" data-main="${resource(dir: 'assets/javascripts', file: 'radio.js')}" />
		<asset:deferredScripts/>
	</body>
</html>