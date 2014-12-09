package com.radio.core

class Song {

	String title
	String artist
	String album
	String link
	
	String images // ;; separated
	String lyrics
	
	Long playCount = 0
	Long lastFMPopuplarity = 0

	static hasMany = [genres: Genre]
	    
	static constraints = {
		title nullable: true
		artist nullable: true
		album nullable: true
		lyrics type: "text", nullable: true
		images nullable: true
    }
	
	@Override
	public String toString() {
		StringBuilder result = new StringBuilder();
		result.append(this.title);
		return result.toString();
	}
}
