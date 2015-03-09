import com.radio.security.Role
import com.radio.security.Users
import com.radio.security.UserRole
import com.topcorner.core.League;

class BootStrap {

    def init = { servletContext ->
		
		if (Users.count() == 0){
			log.info "Creating user and admin roles..."
			def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
			def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
	  
			log.info "Creating admin user AJ"
			def adminUser = new Users(username: 'admin.aj', password: '909')
			adminUser.save(flush: true)
	  
			UserRole.create adminUser, adminRole, true
		}
		
		if (League.count() == 0){
			//create league
			def eplLeague = new League()
			eplLeague.name = "English Premier League"
			eplLeague.save(flush: true)
			
		}
		
    }
    def destroy = {
    }
}
