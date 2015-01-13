package com.radio.core

class Song {

	String title
	String artist
	String album
	String videoId
	
	String images // ;; separated
	String lyrics
	
	Long playCount = 0
	Long lastFMPopuplarity = 0

	String infoURLs
	
	Boolean enabled = true
	
	static hasMany = [genres: Genre]
	    
	static constraints = {
		title nullable: true
		artist nullable: true
		album nullable: true
		lyrics type: "text", nullable: true
		images nullable: true
		videoId nullable: true, unique: true
		infoURLs nullable: true
    }
	
	@Override
	public String toString() {
		StringBuilder result = new StringBuilder();
		result.append(this.title);
		return result.toString();
	}
}
