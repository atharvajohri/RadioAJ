package com.radio.core

class Song {

	String title
	String artist
	String album
	String link
	
	String lyrics
	Genre genre
	
    static constraints = {
		title nullable: true
		artist nullable: true
		album nullable: true
		lyrics type: "text", nullable: true
    }
	
	@Override
	public String toString() {
		StringBuilder result = new StringBuilder();
		result.append(this.title);
		return result.toString();
	}
}
