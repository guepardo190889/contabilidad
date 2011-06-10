package mantenimiento

class ControlCambio {
    String descripcion
    String tipoCambio
    
    static constraints = {
        descripcion maxSize:2048, blank:false
        tipoCambio inList:['BUG','NUEVO','CORREGIDO','ACEPTADO']
    }
    
    static mapping = {
         table 'cambios'
    }
    
    String toString () {
        "$descripcion $tipoCambio"
    }
}
