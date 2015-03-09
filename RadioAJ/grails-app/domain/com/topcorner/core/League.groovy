package com.topcorner.core

class League {

	static hasMany = [teams: Team]
	
	String name
	String shortName
	
	Boolean active = true
	
	Date dateCreated
	
    static constraints = {
		shortName nullable: true
    }
	
	@Override
	public String toString() {
		StringBuilder result = new StringBuilder();
		result.append(this.short_name ?: this.name);
		return result.toString();
	}
}
