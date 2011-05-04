package general

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_PROGRAMADOR','ROLE_ADMINISTRADOR','ROLE_USUARIO'])

class InicioController {

    def index = { }
}
