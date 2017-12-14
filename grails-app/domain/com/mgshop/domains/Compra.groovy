package com.mgshop.domains

import com.mgshop.domains.seguridad.Usuario
import grails.converters.JSON

class Compra  implements Serializable {
    boolean isVerified = false// Confirms the user received the order.
    boolean isProcessed= false // Confirms order was processed.
    boolean emailSent = false// Email sent to guys.
    int notation = 0 //Will work as fiscal proof.
    String address
    String city
    String zip

    BigDecimal total
    String txnId

    //Datos genericos del dominio.
    boolean habilitado = true;
    String creadoPor = "sistemas";
    String modificadoPor = "sistemas";
    Date dateCreated;
    Date lastUpdated;

    boolean estadoDespacho =false

    static belongsTo = [user: Usuario]
    static hasMany = [products: ArticuloCompra]

    static constraints = {
    }
}
