package com.radio.core

import grails.converters.JSON

import org.springframework.messaging.handler.annotation.MessageMapping
import org.springframework.messaging.handler.annotation.SendTo

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
