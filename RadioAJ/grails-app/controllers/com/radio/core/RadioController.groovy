package com.radio.core

import grails.converters.JSON

class RadioController {

	def trackInfoService
	
    def index() { }
	
	/*@MessageMapping("/hello")
    @SendTo("/topic/hello")
    protected String hello(Map map) {
        return (map as JSON)?.toString()
    }
	
	def getTrackInfo(){
		log.info "$params.title $params.artist"
		render trackInfoService.extractTrackData (trackInfoService.getTrackInfoLastFM(params.title, params.artist, null))
	}*/
	
	
	def getTracks(){
		
		params.offset = params.offset ? Long.parseLong(params.offset.toString()) : 0
		params.max = params.max ? Long.parseLong(params.max.toString()) : 0
		
		def songs = Song.list (max: params.max ?: 3, offset: params.offset ?: 0)
		def responseJSON = [
			songList: songs,
			offset: (params.offset + (params.max ?: 3) )	
		]
		
		render responseJSON as JSON
	}
	
	def makeRestCall(){
		log.info "trying to make rest call ${params.url}"
		trackInfoService.makeRestCall(params.url, params)
	}
	
	def getYoutube(){
		def url = params.url
		
		println "-----------------..----------------"
		
		def rnd = new Random().nextInt(10 * 99999)
		
		log.info "creating new video $url, rnd as $rnd"
		println "creating new video $url"
		
		/*log.info "---> creating file into /var/lib/tomcat7/webapps/ROOT/video/${rnd}.mp4"
//		log.info "---> exec: youtube-dl -o /var/lib/tomcat7/webapps/ROOT/video/"+rnd+".mp4 " + url
		
		log.info "exec: /home/ubuntu/roots/runytdl " + rnd + " " + url
		def p = Runtime.getRuntime().exec("/home/ubuntu/roots/runytdl " + rnd + " " + url);
		println p.getInputStream().getText()
		p.waitFor()
		println p.getInputStream().getText()
		p.destroy()*/
		
		
	   try {
			
			ProcessBuilder builder = new ProcessBuilder( "sudo runytdl " + rnd + " " + url);
			builder.directory( new File("/home/ubuntu/roots/") ); // this is where you set the root folder for the executable to run with
			builder.redirectErrorStream(true);
			Process process =  builder.start();
			
			Scanner s = new Scanner(process.getInputStream());
			StringBuilder text = new StringBuilder();
			while (s.hasNextLine()) {
			  text.append(s.nextLine());
			  text.append("\n");
			}
			s.close();
			
			int result = process.waitFor();
			
			System.out.printf( "Process exited with result %d and output %s%n", result, text );
	   }
	   catch (IOException e) {
		   System.out.println("exception happened - here's what I know: ");
		   e.printStackTrace();
	   }
		
		
		println "generating response"
		
		def responseHTML = """
			<b><a href='/video/${rnd}.mp4'>Click to download your YouTube video</a></b><br><br>
			Thanks for using Atharva's anywhere YouTube viewer.<br>
			This is BETA application for developing an online radio. <br>
			If you liked using this service, please show the appreciation by buying Atharva a chocolate.

			<br><br>
			Contact: <b>johri.atharva@gmail.com</b>
		"""
		render responseHTML
	}
	
	def createCustomTrack(){
		def song = trackInfoService.extractTrackData (trackInfoService.getTrackInfoLastFM(params.title, params.artist, null))
		trackInfoService.getYouTubeVideoForSong (song)
		
		def responseStatus = [saved: true]
		if (song.save(flush: true)){
			responseStatus.song = song
			log.info "new song [ $song.title ] saved"
		}else{
			responseStatus.saved = false
			responseStatus.errors = song.errors
			song.errors	.each {
				println it
			}
		}
		
		log.info "User agent: " + request.getHeader("User-Agent")
		header "Access-Control-Allow-Origin", 'chrome-extension://ejkkenlggcicffnickkpolbbjnickgje'
		render responseStatus as JSON
	}
}
