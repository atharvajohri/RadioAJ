package com.radio.core

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class StationController {

	static scaffold = true
	
    def index() { 
	}
}
