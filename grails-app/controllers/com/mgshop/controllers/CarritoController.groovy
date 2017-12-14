package com.mgshop.controllers

import com.mgshop.domains.ArticuloCompra
import com.mgshop.domains.Compra
import com.mgshop.domains.seguridad.Perfil
import com.mgshop.domains.seguridad.Usuario
import com.mgshop.domains.Producto

import com.mgshop.domains.seguridad.UsuarioPerfil
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

            Producto producto = Producto.findById(articuloCompra.producto.id)
            producto.quantity--
            producto.save(failOnError: true, flush: true)


        }
        compra.save(failOnError: true, flush: true)

        def items = usuario.carroDeCompras
        usuario.carroDeCompras = null
        items.each {
            it.delete(flush:true)
        }

        usuario.refresh()

        Usuario.enviarCorreoUsuarioDespacho(UsuarioPerfil.findAllByPerfil(Perfil.findByAuthority("ROLE_DEPARTAMENTOALMACEN")).usuario,compra)


        redirect(uri:"/")

    }
    def despachoCompras(){
        [despachadas: Compra.findAllByHabilitadoAndEstadoDespacho(true,true), sinDespacho: Compra.findAllByHabilitadoAndEstadoDespacho(true,false)]
    }

    def realizarDespacho(String compraId){
        Usuario usuario = (Usuario)springSecurityService.currentUser
        Compra compra = Compra.findById(Long.parseLong(compraId))
        compra.estadoDespacho=true
        compra.modificadoPor=usuario.username
        compra.save(failOnError: true, flush: true)
        redirect(uri:"/carrito/despachoCompras")




    }
}
