package com.radio.core

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

class RadioController {

	def trackInfoService
	def utilService
	
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
		def url = params.videoId ? "http://www.youtube.com/watch?v=${params.videoId}" : params.url
		def videoId = params.videoId ?: 0
		if (!url && params.keyword){
			log.info "No URL found, searching by title and artist"
			videoId = trackInfoService.getYouTubeVideoIdByQuery(params.keyword)
			if (videoId)
				url = "http://www.youtube.com/watch?v=${videoId}"
		}else{
			log.info "Extracting video from url"
		}

		def rnd = 0
		if (url && videoId){
			println "-----------------..-----------------"
			rnd = new Random().nextInt(10 * 99999)
			try {
				utilService.runProcess("/usr/local/bin/youtube-dl -o /home/ubuntu/video/${videoId.toString()}.mp4 ${params.audio ? '--extract-audio --audio-format mp3' : ''} ${url}")
				utilService.runProcess("mv /home/ubuntu/video/${videoId.toString()}.${params.audio ? 'mp3' : 'mp4'} /var/lib/tomcat7/webapps/ROOT/video")
			}
			catch (IOException e) {
				System.out.println("exception happened - here's what I know: ");
				e.printStackTrace();
				rnd = 0
			}
		}
		
		def result = [
			"fileName": videoId
		]		
		render result as JSON
	}
	
	@Secured(['ROLE_ADMIN'])
	def watch(){
		
	}
	
	@Secured(['ROLE_ADMIN'])
	def myStation(){
		
	}
	
	@Secured(['ROLE_ADMIN'])
	def getAllTracks(){
		def responseData = [videoIdList: Song.list()]
		render responseData as JSON
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
