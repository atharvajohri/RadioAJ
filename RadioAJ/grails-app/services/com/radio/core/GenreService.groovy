package com.radio.core

import grails.transaction.Transactional

@Transactional
class GenreService {

    def createGenre(name, flush) {
		log.info "---> Trying to create a genre $name..."
		def existingGenre = Genre.findByName(name)
		if (!existingGenre){
			existingGenre = new Genre(name: name).save( flush: (flush ?: false) )
			println "$name created!"
		}else{
			println "$name exists!"
		}
		
		return existingGenre
    }
}
