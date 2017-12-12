package com.mgshop.controllers

import com.mgshop.domains.Producto
import grails.plugin.springsecurity.annotation.Secured
import org.springframework.web.multipart.MultipartFile

@Secured(["ROLE_ADMIN", "ROLE_USUARIO"])

class ProductoController {


    def index() { }


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

    def render_image = {
        def product = Producto.get(params.id)

        response.contentType = product.imageType
        response.contentLength = product.productImage.size()
        OutputStream out = response.outputStream
        out.write(product.productImage)
        out.close()
    }
}
