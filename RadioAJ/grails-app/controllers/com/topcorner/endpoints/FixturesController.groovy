package com.topcorner.endpoints

class FixturesController {

//	static allowedMethods = [index: 'POST'] //TODO uncomment post testing
	
	def fixtureService	
	def parsingService
	
    def index() {
		
	}
	
	def getFixturesInDB(){
		parsingService.parseEPLFixtures()
		
//		fixtureService.populateFixturesInDB(["EPL"])
	}
}
