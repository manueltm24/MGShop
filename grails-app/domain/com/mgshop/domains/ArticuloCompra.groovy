package com.mgshop.domains

class ArticuloCompra  implements Serializable {

    Producto producto
    int cantidad


    //Datos genericos del dominio.
    boolean habilitado = true;
    String creadoPor = "sistemas";
    String modificadoPor = "sistemas";
    Date dateCreated;
    Date lastUpdated;

    static constraints = {
    }
}
