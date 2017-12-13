package com.mgshop.controllers.REST

import com.mgshop.domains.seguridad.Perfil
import com.mgshop.domains.seguridad.Usuario
import com.mgshop.domains.seguridad.UsuarioPerfil
import grails.converters.JSON
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.security.authentication.encoding.PasswordEncoder

class UsuarioRestController {

    @Autowired
    PasswordEncoder passwordEncoder

    boolean before() {
        header( "Access-Control-Allow-Origin", "*" )
        header( "Access-Control-Allow-Credentials", "true" )
        header( "Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE" )
        header( "Access-Control-Max-Age", "3600" )
        true
    }

    def restLogin() {
        def usuarioJson = request.JSON
        def usuario = null

        if (Usuario.findByUsername(usuarioJson.getAt("username") as String) != null) {
            usuario = Usuario.findByUsername(usuarioJson.getAt("username") as String)

            if (usuario.username == usuarioJson.getAt("username") && passwordEncoder.isPasswordValid(usuario.password, usuarioJson.getAt("password") as String, null) && UsuarioPerfil.findByUsuarioAndPerfil(usuario, Perfil.findByAuthority("ROLE_ADMIN"))) {
                render usuario as JSON
            } else {
                render null as JSON
            }
        } else {
            render null as JSON
        }
    }
}
