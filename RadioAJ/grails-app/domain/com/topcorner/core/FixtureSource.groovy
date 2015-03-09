package com.topcorner.core

class FixtureSource {

	static hasMany = [sourcesLeagues: League]
	
	String url
	String tags
	
	Boolean active = true
	Date dateCreated
	
    static constraints = {
		url url: true, unique: true
	}
}
