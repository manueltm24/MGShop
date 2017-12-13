package com.mgshop.controllers

import com.mgshop.domains.ArticuloCarrito
import com.mgshop.domains.Producto
import com.mgshop.domains.seguridad.Usuario
import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_USUARIO"])

class TiendaController {


    def springSecurityService


    def index() {
        Usuario usuario = (Usuario)springSecurityService.currentUser

        [usuario:usuario,listadoProductos:Producto.findAllByHabilitado(true)]
    }

    def anadirCarrito(){
        Usuario usuario = (Usuario)springSecurityService.currentUser

        String idProducto= params.get("producto")
        ArticuloCarrito articuloCarrito = new ArticuloCarrito(producto: Producto.findById(Long.parseLong(idProducto)),cantidad: 1)
        articuloCarrito.save(flush:true, failOnError:true)
        usuario.carroDeCompras.add(articuloCarrito)
        usuario.save(flush:true, failOnError:true)

        redirect(uri:"/")


    }
}
