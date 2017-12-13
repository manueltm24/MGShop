package com.mgshop.domains

class Producto  implements Serializable {

    byte[] productImage
    String imageType
    String title
    String description
    double price
    Integer quantity

    //Datos genericos del dominio.
    boolean habilitado = true;
    String creadoPor = "sistemas";
    String modificadoPor = "sistemas";
    Date dateCreated;
    Date lastUpdated;

    static constraints = {
        title blank: false
        description nullable: true
        price blank: false
        quantity blank: false
        productImage nullable: true, display: false, maxSize: 20971520
        imageType nullable: true, display: false
    }
}
