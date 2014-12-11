//setTimeout(function(){
	var _$ = jQuery;
	
	if (window.location.href.indexOf("blockOptions") > -1){
		_$.ajax({
			url: window.location.href,
			type: "GET",
			success: function(response){
				var content = response.substring(response.indexOf("<form"), response.indexOf("</form>")+7);
				_$("body").append(content);
			}
		});	
	}
	
	
	
//}, 2000);