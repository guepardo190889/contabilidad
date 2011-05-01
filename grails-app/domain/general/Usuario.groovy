package general

class Usuario {

	String username
	String password
        String nombre
        String apellidos
        String correo
        String nombreCompleto
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

        static transients = ['nombreCompleto']

	static constraints = {
		username blank: false, unique: true
		password blank: false
                nombre blank: false, size:1..64
                apellidos blank: false, size:1..64
                correo nullable: true, size:1..128
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Rol> getAuthorities() {
		UsuarioRol.findAllByUsuario(this).collect { it.rol } as Set
	}

        String getNombreCompleto() {
            return "$apellidos, $nombre"
        }

        String toString() {
            return "$apellidos, $nombre"
        }
}
