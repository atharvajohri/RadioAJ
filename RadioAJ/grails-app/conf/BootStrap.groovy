import com.radio.security.Role
import com.radio.security.Users
import com.radio.security.UserRole

class BootStrap {

    def init = { servletContext ->
		
		if (Users.count() == 0){
			log.info "Creating user and admin roles..."
			def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
			def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
	  
			log.info "Creating admin user AJ"
			def adminUser = new Users(username: 'admin.aj', password: '15926769')
			adminUser.save(flush: true)
	  
			UserRole.create adminUser, adminRole, true
		}
		
    }
    def destroy = {
    }
}
