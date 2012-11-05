package task.watch

import com.tc.taskwatch.Role
import com.tc.taskwatch.User
import com.tc.taskwatch.UserRole
import grails.validation.ValidationException

class BootstrapService {

    def bootstrapData() {
        User user = new User(username: 'admin', email: 'puneetbehl@yahoo.com', firstName: 'Puneet', lastName: 'Behl', password: 'admin')
        Role role = new Role(authority: 'ROLE_USER')
        if(!User.findByEmail(user.email)) {
            try {
                user.save flush: true, failOnError: true
                role.save flush: true, failOnError: true
            } catch (ValidationException ve) {
                log.info(ve)
            }
            UserRole.create user, role, true
        }
    }
}
