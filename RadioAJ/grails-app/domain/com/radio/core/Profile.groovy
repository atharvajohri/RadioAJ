package com.radio.core

class Profile {

	static hasMany = [stations: Station]
	
	String identifier
	Date dateCreated
	
    static constraints = {
		identifier unique: true
    }
}
