package com.mgshop.controllers

import com.mgshop.domains.ArticuloCompra
import com.mgshop.domains.Compra
import com.mgshop.domains.seguridad.Usuario
import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_USUARIO"])

class CarritoController {

    def springSecurityService

    def index() {
        Usuario usuario = (Usuario)springSecurityService.currentUser
        [usuario:usuario]
    }

    def checkout() {
//        List<Producto> listadoProductos = (List<Producto>)session.getAttribute("carritoUsuario")
        Usuario usuario = (Usuario)springSecurityService.currentUser
        [usuario:usuario]

    }
    def procesarCompra(){

        Usuario usuario = (Usuario)springSecurityService.currentUser

        println(params)

        def compra = new Compra(
                txnId: params.txn_id,
                user:usuario,
                total: new BigDecimal(params.payment_gross),
                address: params.address_street,
                city: params.address_city,
                zip: params.address_zip,
        )

        compra.save(failOnError: true, flush: true)

        compra.products = []
        usuario.carroDeCompras.each { articuloCarrito ->

            ArticuloCompra articuloCompra = new ArticuloCompra(producto: articuloCarrito.producto, cantidad: articuloCarrito.cantidad)
            articuloCompra.save(failOnError: true, flush: true)
            compra.products.add(articuloCompra)

        }
        compra.save(failOnError: true, flush: true)

        def items = usuario.carroDeCompras
        usuario.carroDeCompras = null
        items.each {
            it.delete(flush:true)
        }

        usuario.refresh()


        redirect(uri:"/")

    }
}
