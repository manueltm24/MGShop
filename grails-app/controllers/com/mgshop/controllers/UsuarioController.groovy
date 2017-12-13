package com.mgshop.controllers

import com.mgshop.domains.seguridad.Perfil
import com.mgshop.domains.seguridad.Usuario
import com.mgshop.domains.seguridad.UsuarioPerfil
import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_USUARIO"])

class UsuarioController {

    def crearUsuario() { }

    def procesarNuevoUsuario(String username,String nombre, String correoElectronico, String password, String permisos){
        println(params)
        Usuario usuario = new Usuario(username: username, nombre: nombre, correoElectronico:correoElectronico,password: password)
        Usuario.enviarCorreoNuevoUsuario(usuario)


        usuario.save(flush:true,failOnError:true)


        UsuarioPerfil usuarioPerfil = new UsuarioPerfil(usuario: usuario, perfil: Perfil.findById(Long.parseLong(permisos)))
        usuarioPerfil.save(flush:true,failOnError:true)


        redirect(uri:"/usuario/listadoUsuarios")

    }

    def listadoUsuarios(){
        [listadoUsuarios: Usuario.list()]
    }
}
