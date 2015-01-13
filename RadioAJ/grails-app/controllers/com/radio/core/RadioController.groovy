package com.radio.core

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import groovy.io.FileType

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
	
	/*def makeRestCall(){
		log.info "trying to make rest call ${params.url}"
		trackInfoService.makeRestCall(params.url, params)
	}*/
	
	@Secured(['ROLE_ADMIN'])
	def getYoutube(){
		log.info "---> Request to Get YouTube \n kw: $params.keyword \n vi: $params.videoId"
		def url = params.videoId ? "http://www.youtube.com/watch?v=${params.videoId}" : params.url
		def videoId = params.videoId ?: 0
		if (!url && params.keyword){
			log.info "No URL found, searching by title and artist keywords"
			videoId = trackInfoService.getYouTubeVideoIdByQuery(params.keyword)
			if (videoId)
				url = "http://www.youtube.com/watch?v=${videoId}"
		}else if (url.indexOf("v=") > -1){
			log.info "Extracting video from url $url"
			videoId = url.substring(url.indexOf("v=") + 2, url.size())
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
	def updatePlayCount(){
		def response = [:]
		log.info "request to update play count... $params.v"
		def song = Song.get(Long.parseLong(params.v.toString()))
		log.info "got song ${song.title} to update play count.., current PC ${song.playCount}"
		if (song){
			song.playCount++
			song.save(flush: true)
			
			response.success = true
			response.playCount = song.playCount 
		}else{
			response.success = false
		}
		
		render response as JSON
	}
	
	@Secured(['ROLE_ADMIN'])
	def getLeastHeardSong(){
		def songs = Song.where {
			enabled == true && playCount == min(playCount)
		}
	
		def songList = []
		songs.each {
			songList.push(it)
		}
		
		Collections.shuffle(songList)
		
		render songList[0] as JSON
	}
	
	@Secured(['ROLE_ADMIN'])
	def getMusic(){
		
		log.info "request to get music ---> \n$params.keyword"
		
		def result = [:]
		result.complete = false
		
		def videoId = trackInfoService.getYouTubeVideoIdByQuery(params.keyword)
		
		if (videoId){
			try {
				def res = utilService.runProcess("/usr/local/bin/youtube-dl -o /home/ubuntu/video/${videoId.toString()}.mp3 --extract-audio --audio-format mp3 http://www.youtube.com/watch?v=${videoId}")
				if (res == 0){
					res = utilService.runProcess("mv /home/ubuntu/video/${videoId.toString()}.mp3 /var/lib/tomcat7/webapps/ROOT/video")
					if (res != 0){
						result.error = 'Error in extracting song.. [1]'
						log.info 'Error in extracting song.. [1]'
					}else{
						result.complete = true
						result.fileName = videoId
					}
				}else{
					result.error = 'Error in extracting song.. [0]'
					log.info 'Error in extracting song.. [0]'
				}
				
			}catch (IOException e) {
				System.out.println("exception happened in get music - here's what I know: ");
				e.printStackTrace();
			}
		}else{
			result.error = 'Could not find video'
			log.info 'Could not find video'
		}
		
		render result as JSON
	}
	
	@Secured(['ROLE_ADMIN'])
	def watch(){
		
	}
	
	@Secured(['ROLE_ADMIN'])
	def remap(){
//		Song.list().each { song ->
			def dir = new File("E:\\netai")
//			
//			log.info "checking song $song with videoid $song.videoId"
			
			dir.eachFileRecurse (FileType.FILES) { file ->
				log.info " --> checking file $file.name"
				def song = Song.findByVideoId(file.name.replace(".mp3", ""))
				
				if (song){
					log.info "song $song.title found for $file.name... now renaming"
					file.renameTo(new File("E:\\netai\\[EXT]${song.title}.mp3"))
				}
			}
//		}
		
		render "ok"
	}
	
	@Secured(['ROLE_ADMIN'])
	def myStation(){
		
	}
	
	/*def searchWiki(){
		trackInfoService.getWiki params
	}*/
	
	@Secured(['ROLE_ADMIN'])
	def updateSongInfo(){
		log.info params.id
		def songList = []
		if (params.id){
			def forSong = Song.get(Long.parseLong(params.id.toString()))
			if (forSong){
				songList.push(forSong)
			}
		}else{
			songList = Song.list()
		}
		
		log.info "updating info for songs $songList"
		songList.each { song ->
			if (!song.infoURLs){
				trackInfoService.getWiki(song)
			}
		}
		
		def renderedHTML = "<table>"
		Song.list().each { song ->
			renderedHTML += "<tr><td>${song.title}</td><td><a href='${song.infoURLs.replace(';', '')}'>${song.infoURLs}</a></td></tr>"
		} 
		renderedHTML += "</table>"
		
		render renderedHTML
		
	}
	
	@Secured(['ROLE_ADMIN'])
	def getAllTracks(){
		def responseData = [videoIdList: Song.findAllByEnabled(true)]
		render responseData as JSON
	}
	
	@Secured(['ROLE_ADMIN'])
	def songPicker(){
	}
	
	@Secured(['ROLE_ADMIN'])
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
