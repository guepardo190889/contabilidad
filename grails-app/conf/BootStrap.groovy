import general.*

class BootStrap {

    def sessionFactory
    def springSecurityService
    def init = { servletContext ->

        log.info "Creando Roles"

        def programadorRol = Rol.findByAuthority('ROLE_PROGRAMADOR') ?: new Rol(authority : 'ROLE_PROGRAMADOR').save(flush:true)
        def administradorRol = Rol.findByAuthority('ROLE_ADMINISTRADOR') ?: new Rol(authority : 'ROLE_ADMINISTRADOR').save(flush:true)
        def usuarioRol = Rol.findByAuthority('ROLE_USUARIO') ?: new Rol(authority : 'ROLE_USUARIO').save(flush:true)

        log.info "Creando Usuarios"

        def usuario = Usuario.findByUsername('roberto')
            if(!usuario){
                usuario = new Usuario(
                    username : 'roberto',
                    password : springSecurityService.encodePassword('roberto'),
                    enabled : true,
                    nombre: 'Roberto',
                    apellidos: 'Hernandez',
                    correo: 'rober_ajpop@hotmail.com'
                ).save(flush:true)
            }
            if(!usuario.authorities.contains(administradorRol)){
                UsuarioRol.create(usuario, administradorRol)
            }

        usuario = Usuario.findByUsername('blackdeath')
                if (!usuario){
                        usuario = new Usuario(
                        username : 'blackdeath'
                        ,password : springSecurityService.encodePassword('aeiou123')
                        ,enabled : true
                        ,nombre:'Seth Karim'
                        ,apellidos:'Luis Martinez'
                        ,correo:'guepardo190889@gmail.com'
                    ).save(flush: true)
                }
                if (!usuario.authorities.contains(programadorRol)){
                UsuarioRol.create(usuario, programadorRol)
                }

    log.info("¡La aplicacion ha sido cargada exitosamente!")

    }
    def destroy = {
    }
}
