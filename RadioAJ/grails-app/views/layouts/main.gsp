<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		
		<title>
			<g:layoutTitle/> RadioJohri: Atharva's online radio station!
		</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
  		<asset:stylesheet src="application.css"/>
		<link href='http://fonts.googleapis.com/css?family=Chicle|Open+Sans:600italic,400,600,700,300' rel='stylesheet' type='text/css'>
		<asset:javascript src="jquery" />
		<asset:javascript src="common/utils.js" />
		<asset:javascript src="common/openOpts.js" />
		
		<script>
		(function($){
			$(document).ready(function(){
				if (!Utils.isBrowserChrome()){
					$("#only-chrome").removeClass("hide");
					$("#body-container").addClass("hide").empty();
				}
			});
		})(jQuery);
		</script>
		
		<g:layoutHead/>
	</head>
	<body>
		<div id="main-container">
			<div id="header-container">
				<div class="restrict-width">
					<table class="full-width">	
						<tr>
							<td>
								<div id="main-radio-logo" role="banner">
									Radio<b>Johri</b>
									<span class="small-text bold" id="meta-logo-text">BETA</span>
								</div>							
							</td>
							<td align="right">
								<table id="menu-table">
									<tr>
										<td><a href="/">Watch</a></td>
										<td><a href="/myStation">Listen</a></td>
										<td><a href="/songPicker">Song Picker</a></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div id="only-chrome" class="hide">
				<b>No Chrome!</b><br>
				This website was built and developed using features specific to Google Chrome.<br>
				Join the future of the web, and use chrome.<br>
				<a href="https://www.google.com/chrome/browser/desktop/">Download Google Chrome</a>
			</div>
			<div id="body-container">
				<div class="restrict-width">
					<g:layoutBody/>
				</div>			
			</div>
			<div class="footer restrict-width" role="contentinfo">
				<div class="restrict-width">
					Designed, developed, maintained and thought of by <a href="https://www.facebook.com/atharva.johri">Atharva Johri</a>. Contact me to contribute to the project @ johri.atharva@gmail.com
				</div> 
			</div>
		</div>
		<div id="global-overlay" class="hide">
			<div class="spinner"></div>
		</div>
	</body>
</html>
