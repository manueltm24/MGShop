package com.mgshop.controllers.REST

import com.mgshop.domains.seguridad.Usuario
import grails.converters.JSON
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.security.authentication.encoding.PasswordEncoder

class UsuarioRestController {

    @Autowired
    PasswordEncoder passwordEncoder

    def restLogin() {
        def usuarioJson = request.JSON
        def usuario = null

        if (Usuario.findByUsername(usuarioJson.getAt("username") as String) != null) {
            usuario = Usuario.findByUsername(usuarioJson.getAt("username") as String)

            if (usuario.username == usuarioJson.getAt("username") && passwordEncoder.isPasswordValid(usuario.password, usuarioJson.getAt("password") as String, null)) {
                render usuario as JSON
            } else {
                render null as JSON
            }
        } else {
            render null as JSON
        }
    }
}
