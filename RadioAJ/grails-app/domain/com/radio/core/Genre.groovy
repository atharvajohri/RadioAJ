package com.radio.core

class Genre {

	String name
	Date dateCreated
	
    static constraints = {
		name nullable:false, blank: false
    }
	
	@Override 
	public String toString() {
		StringBuilder result = new StringBuilder();
		result.append(this.name);
		return result.toString();
	}
}
