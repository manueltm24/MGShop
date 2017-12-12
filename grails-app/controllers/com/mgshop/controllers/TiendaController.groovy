package com.mgshop.controllers

import com.mgshop.domains.ArticuloCarrito
import com.mgshop.domains.Producto
import com.mgshop.domains.seguridad.Usuario
import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_USUARIO"])

class TiendaController {


    def springSecurityService


    def index() {
        [listadoProductos:Producto.findAll()]
    }

    def anadirCarrito(){
        Usuario usuario = (Usuario)springSecurityService.currentUser

        String idProducto= params.get("producto")
        ArticuloCarrito articuloCarrito = new ArticuloCarrito(producto: Producto.findById(Long.parseLong(idProducto)),cantidad: 1)
        articuloCarrito.save(flush:true, failOnError:true)
        usuario.carroDeCompras.add(articuloCarrito)
        usuario.save(flush:true, failOnError:true)



//        if(request.getSession(false) != null){
//            HttpSession session = request.getSession()
//            if(session.getAttribute("carritoUsuario")){
//                List<Producto> listadoProductos = (List<Producto>)session.getAttribute("carritoUsuario")
//                listadoProductos.add(Producto.findById(Long.parseLong(idProducto)))
//                session.setAttribute("carritoUsuario",listadoProductos)
//                println session.getAttribute("carritoUsuario")
//
//
//            }
//            else{
//                List<Producto> listadoProductos = new ArrayList<>()
//                listadoProductos.add(Producto.findById(Long.parseLong(idProducto)))
//                session.setAttribute("carritoUsuario",listadoProductos)
//
//                println session.getAttribute("carritoUsuario")
//
//            }
//        }



        redirect(uri:"/")


    }
}
