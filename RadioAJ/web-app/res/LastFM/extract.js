var $$ = jQuery;
$$(".track-detail").css("background", "rgba(50, 50, 50, 0.7)"); //highlight parsable links
$$(".track-detail").on("click", function(){
	var artist = $$(this).find("a").first().text();
	var title = $$(this).find("a").last().text();
	
	console.log ("Sending Song - artist: " + artist + ", track: " + title + " to Radio..");
	$.ajax({
		url: "http://localhost:8090/radio/createCustomTrack",
		data: {
			artist: artist,
			title: title
		},
		type: "GET",
		success: function(){
			console.log("song sent");
		},
		error: function(){
			console.log("song could not be sent");
		},
		complete: function(response){
			console.log(response);
		}
	});
});