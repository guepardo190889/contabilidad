package secure

import grails.plugins.springsecurity.Secured

class SecureController {

    @Secured(['ROLE_PROGRAMADOR'])
    def index = {
        render 'Secure access only'
    }
}
