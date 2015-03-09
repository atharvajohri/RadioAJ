package com.topcorner.services

import grails.transaction.Transactional

import org.jsoup.Jsoup
import org.jsoup.nodes.Document
import org.jsoup.select.Elements

import com.topcorner.core.League

@Transactional
class ParsingService {

	def teamService
	
    def parseEPLFixtures() {
		def teamData = [:]
		
		League league = League.findByName("English Premier League")
		
		teamData.teamTableHost = "http://www.premierleague.com/"
		teamData.teamTablePath = "en-gb/matchday/matches.html"
		teamData.teamLinkSelector = ".leagueTable .col-club a"
		
		Document doc = Jsoup.connect(teamData.teamTableHost + teamData.teamTablePath).get()
		Elements teamLinks = doc.select teamData.teamLinkSelector
		
//		teamLinks[0]each {
			teamService.createTeamFromLink ( teamData.teamTableHost, league, teamLinks[0].attr("href") )
//		}
		
		
    }
}
