package com.topcorner.services

import grails.transaction.Transactional

import com.topcorner.core.FixtureSource

@Transactional
class FixtureService {

    def populateFixturesInDB(fixtureLeagues) {
		def fixtureSources = []
		
		fixtureLeagues.each {
			def foundFixtureSource = FixtureSource.findAllBySourceLeagues(it)
			if (foundFixtureSource){
				fixtureSources.push foundFixtureSource
			}
		}
		
		log.info fixtureLeagues
		
    }
	
	def populateFixtureSources(){
	}
}
