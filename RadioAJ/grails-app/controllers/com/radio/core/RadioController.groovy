package com.radio.core

import grails.converters.JSON

import org.springframework.messaging.handler.annotation.MessageMapping
import org.springframework.messaging.handler.annotation.SendTo

class RadioController {

	def trackInfoService
	
    def index() { }
	
	@MessageMapping("/hello")
    @SendTo("/topic/hello")
    protected String hello(Map map) {
        return (map as JSON)?.toString()
    }
	
	def getTrackInfo(){
		log.info "$params.title $params.artist"
		render trackInfoService.extractTrackData (trackInfoService.getTrackInfoLastFM(params.title, params.artist, null))
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
			song.errors.each {
				println it
			}
		}
		
		render responseStatus as JSON
	}
}
