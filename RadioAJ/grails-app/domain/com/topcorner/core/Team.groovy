package com.topcorner.core

class Team {

	static belongsTo = [league: League]
	String name
	String shortName
	
	String teamSource
	
	Date dateCreated
	Boolean active = true
		
    static constraints = {
		teamSource nullable: true
		name unique: true
		shortName nullable: true
    }
	
	@Override
	public String toString() {
		StringBuilder result = new StringBuilder();
		result.append(this.name);
		return result.toString();
	}
}
