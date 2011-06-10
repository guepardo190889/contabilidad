package distribuidora

class Producto {

    String nombre
    String codigo
    String descripcion
    String marca
    //String codigoDeBarras
    Integer existencia = 0;
    BigDecimal precioUnitario = new BigDecimal("0.00")
    BigDecimal precioDistribuidor = new BigDecimal("0.00")
    Date fechaRegistro = new Date();
    //Boolean rebaja = false
    
    static constraints = {
        nombre maxSize:128, blank:false
        codigo maxSize:64, blank:false
        descripcion maxSize:128, blank:false
        marca maxSize:64, blank:false
        precioUnitario blank:false
        precioDistribuidor blank:true
    }
    
    static mapping = {
        table 'productos'
        codigo index: 'producto_codigo_idx'
        descripcion index: 'producto_nombre_idx'
    }
    
    static namedQueries = {
        
    }
    
    String toString () {
        "$nombre $codigo $precioUnitario"
    }
}
