package com.mgshop.controllers

import com.mgshop.domains.Producto
import com.mgshop.domains.seguridad.Usuario
import grails.plugin.springsecurity.annotation.Secured
import org.springframework.web.multipart.MultipartFile

@Secured(["ROLE_ADMIN", "ROLE_DEPARTAMENTOALMACEN","ROLE_CONSUMIDORFINAL","ROLE_PERSONAJURIDICA"])

class ProductoController {


//    def index() { }
//

    def crearProducto(){

    }

    def procesarCrearProducto(){

        Producto product = new Producto(params)

        if (product == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (product.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond product.errors, view:'create'
            return
        }

        MultipartFile imageFile = request.getFile('productImage')
        product.productImage = imageFile.bytes
        product.imageType = imageFile.contentType

        product.save(failOnError: true, flush: true)


        redirect(uri:"/")

    }

    def procesarCrearProducto_Editar(String title, Integer quantity, double price){

        Producto producto = Producto.findById(params.get("idProducto"))
        producto.title = title
        producto.quantity = quantity
        producto.description = params.get("description")
        producto.price = price




        producto.save(failOnError: true, flush: true)


        redirect(uri:"/")

    }

    def render_image = {
        def product = Producto.get(params.id)

        response.contentType = product.imageType
        response.contentLength = product.productImage.size()
        OutputStream out = response.outputStream
        out.write(product.productImage)
        out.close()
    }

    def listadoProductos(){
        [listadoProductos: Producto.findAllByHabilitado(true)]

    }

    def eliminarProducto(String idProducto){

        Producto producto = Producto.findById(Long.parseLong(idProducto))
        producto.habilitado=false;
        producto.save(flush:true,failOnError:true)
        redirect(uri:"/producto/listadoProductos")

    }

    def editarProducto(String idProducto){
        [producto: Producto.findById(Long.parseLong(idProducto))]

    }
}
