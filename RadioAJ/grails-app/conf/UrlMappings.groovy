class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
		"/getTracks" (controller: "radio", action: "getTracks")
        "/"(controller: "radio", action: "watch")
        "500"(view:'/error')
		"/youtube"(controller: "radio", action: "watch")
		"/getYouTube"(controller: "radio", action: "getYoutube")
		"/myStation"(controller: "radio", action: "myStation")
		"/songPicker"(controller: "radio", action: "songPicker")
		"/getMusic"(controller: "radio", action: "getMusic")
		"/updatePlayCount"(controller: "radio", action: "updatePlayCount")
		"/getLeastHeardSong"(controller: "radio", action: "getLeastHeardSong")
	}
}
