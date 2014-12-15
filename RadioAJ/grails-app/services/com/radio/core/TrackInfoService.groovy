package com.radio.core

import grails.transaction.Transactional
import groovy.json.JsonBuilder

@Transactional
class TrackInfoService {

	def grailsApplication
	def genreService
	
    def getTrackInfoLastFM(title, artist, appendAsURL) {
		log.info "searching for [ $title ] by $artist"
		
		def url = grailsApplication.config.LastFM.url	
		withRest(url: url) {
			def response = get(query: [method: 'track.getInfo', api_key: grailsApplication.config.LastFM.api_key, track: title, artist: artist, format: "json"])
			return response.json
		}
    }
	
	def makeRestCall(url, parameters){
		withRest(url: url) {
			def response = get(query: parameters)
			log.info (response)
			log.info "\n-----------"
			response.properties.each{
				log.info it
			}
		}
	}
	
	def extractTrackData (trackInfoJSON){
		Song song = new Song()	
		
		song.title = trackInfoJSON.track.name
		song.artist = trackInfoJSON.track.artist?.name
		song.album = trackInfoJSON.track.album?.title
		song.lastFMPopuplarity = Long.parseLong(trackInfoJSON.track.playcount.toString())
		
		log.info "Building song object from: ${new JsonBuilder( trackInfoJSON ).toPrettyString() }"
		
		if (trackInfoJSON.track.toptags && trackInfoJSON.track.toptags.getClass() != String && trackInfoJSON.track.toptags.tag 
			&& trackInfoJSON.track.toptags.tag.size() > 0){
			for (def i=0;i<trackInfoJSON.track.toptags.tag.size();i++){
				song.addToGenres genreService.createGenre (trackInfoJSON.track.toptags.tag[i].name, true)
			}
		}
		
		log.info "initialized a song: $song.title"
		return song
	}
	
	def getYouTubeVideoForSong(Song song){
		log.info "searching for youtube video [ ${song.title} ] by ${song.artist}"
		
		def url = grailsApplication.config.YouTube.url
		withRest(url: url) {
			def response = get(query: [q: "${song.title} ${song.artist}", part:"snippet", key: grailsApplication.config.YouTube.api_key, maxResults: 1])
			if (response.json?.items[0]?.id?.videoId){
				log.info "found video id for song.. $response.json.items[0].id.videoId"
				song.videoId = response.json.items[0].id.videoId
			}else{
				log.warn "did not find youtube video.. continuing anyway"
			}
			
		}
	}
	
	def getYouTubeVideoIdByQuery(query){
		log.info "searching for youtube video by query $query"
		
		def videoId = null
		def url = grailsApplication.config.YouTube.url
		withRest(url: url) {
			def response = get(query: [q: query, part:"snippet", key: grailsApplication.config.YouTube.api_key, maxResults: 1])
			if (response.json?.items[0]?.id?.videoId){
				log.info "found video id for query: [ $response.json.items[0].id.videoId ]"
				videoId = response.json.items[0].id.videoId
			}else{
				log.warn "did not find youtube video.. continuing anyway"
			}
		}
		
		return videoId
	}
}
