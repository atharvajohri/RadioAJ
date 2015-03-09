package com.topcorner.services

import grails.transaction.Transactional

import org.jsoup.Jsoup
import org.jsoup.nodes.Document

import com.topcorner.core.Team


@Transactional
class TeamService {

	def createTeam(teamName, league, source){
		def existingTeam = Team.findByName(teamName)
		if (!existingTeam){
			existingTeam = new Team()
			existingTeam.name = teamName
			existingTeam.teamSource = source
			
			existingTeam.save(flush: true)
			league.addToTeams existingTeam
		}
		
		return existingTeam
	}
	
    def createTeamFromLink(host, league, path) {
		log.info "Getting info from ${host + path}"
		Document doc = Jsoup.connect(host + path).get()
		
		def teamName = doc.select(".overlay .noborder").text()
		def team = createTeam(teamName, league, (host+path) )
		
		def fixturesLink = host + doc.select(".clubresults .ctalink")[0].attr("href")

		
		
    }

}
