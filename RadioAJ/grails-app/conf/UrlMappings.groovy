class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
		"/getTracks" (controller: "radio", action: "getTracks")
        "/"(controller: "radio", view: "index")
        "500"(view:'/error')
		"/youtube"(controller: "radio", action: "watch")
		"/getYouTube"(controller: "radio", action: "getYoutube")
	}
}
