package com.mgshop.controllers

import com.mgshop.domains.Producto
import com.mgshop.domains.seguridad.Perfil
import com.mgshop.domains.seguridad.Usuario
import com.mgshop.domains.seguridad.UsuarioPerfil
import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_DEPARTAMENTOALMACEN","ROLE_CONSUMIDORFINAL","ROLE_PERSONAJURIDICA"])

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
        [listadoUsuarios: Usuario.findAllByHabilitado(true)]
    }

    def eliminarUsuario(String idUsuario){

        Usuario usuario = Usuario.findById(Long.parseLong(idUsuario))
        usuario.habilitado=false;
        usuario.save(flush:true,failOnError:true)
        redirect(uri:"/usuario/listadoUsuarios")

    }
    def editarUsuario(String idUsuario){
        [usuario: Usuario.findById(Long.parseLong(idUsuario))]

    }

    def procesarNuevoUsuario_editar(long idUsuario,String username,String nombre, String correoElectronico, String password, String permisos){
        Usuario usuario = Usuario.findById(idUsuario)
        usuario.username=username
        usuario.nombre=nombre
        usuario.correoElectronico=correoElectronico
        usuario.password=password

        usuario.save(flush:true,failOnError:true)


//        UsuarioPerfil usuarioPerfil = UsuarioPerfil.findByUsuario(usuario)
//        usuarioPerfil.perfil = Perfil.findById(Long.parseLong(permisos))
//        usuarioPerfil.save(flush:true,failOnError:true)


        redirect(uri:"/usuario/listadoUsuarios")

    }


    
}
