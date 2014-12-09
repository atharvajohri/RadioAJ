package com.radio.core

class Station {

	String name
	Date dateCreated
	
	static hasMany = [songs: Song]
	
    static constraints = {
		name blank: false, nullable: false
    }
	
	@Override
	public String toString() {
		StringBuilder result = new StringBuilder();
		result.append(this.name);
		return result.toString();
	}
}
