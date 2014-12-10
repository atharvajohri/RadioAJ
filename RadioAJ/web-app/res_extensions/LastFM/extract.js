var $$ = jQuery;
$$(".track-detail").css("background", "rgba(50, 50, 50, 0.7)"); //highlight parsable links
$$(".track-detail").on("click", function(){
	var link = $$(this);
	var artist = link.find("a").first().text();
	var title = link.find("a").last().text();
	
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
			link.css("background", "green");
		},
		error: function(){
			console.log("song could not be sent");
			link.css("background", "red");
		},
		complete: function(response){
			console.log(response);
		}
	});
});