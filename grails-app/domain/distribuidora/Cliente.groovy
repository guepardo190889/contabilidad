package distribuidora

class Cliente {
    
    String nombre
    String direccion
    String telefonoCasa
    String telefonoCelular
    String fax
    String correoElectronico
    String nit //Equivalente del RFC
    Date fechaRegistro
    BigDecimal limiteCrediticio
    
    static constraints = {
        nombre maxSize:128, blank:false
        direccion maxSize:256, blank:false
        telefonoCasa maxSize:32, blank:true
        telefonoCelular maxSize:32, blank:true
        fax maxSize:32, blank:true
        correoElectronico maxSize:128, blank:false
        nit maxSize:64, blank:false
        fechaRegistro blank:false
        limiteCrediticio blank:true
    }
    
    static mapping = {
        table 'clientes'
        nombre index:'cliente_nombre_idx'
    }
    
    /*
    static namedQueries = {
        
    }*/
    
    String toString(){
        "$nombre $nit $correoElectronico $limiteCrediticio"
    }
}
