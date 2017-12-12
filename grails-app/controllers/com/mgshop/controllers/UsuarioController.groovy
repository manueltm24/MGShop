package com.mgshop.controllers

import com.mgshop.domains.seguridad.Usuario
import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_USUARIO"])

class UsuarioController {

    def crearUsuario() { }

    def procesarNuevoUsuario(String username,String nombre, String correoElectronico, String password){
        println(params)
        Usuario usuario = new Usuario(username: username, nombre: nombre, correoElectronico:correoElectronico,password: password)
        usuario.save(flush:true,failOnError:true)
        redirect(uri:"/usuario/listadoUsuarios")
    }

    def listadoUsuarios(){
        [listadoUsuarios: Usuario.list()]
    }
}
