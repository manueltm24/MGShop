package com.mgshop.controllers.REST

import com.mgshop.domains.Compra
import com.mgshop.domains.seguridad.Perfil
import com.mgshop.domains.seguridad.Usuario
import com.mgshop.domains.seguridad.UsuarioPerfil
import grails.converters.JSON
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.security.authentication.encoding.PasswordEncoder

class ComprasRestController {

    @Autowired
    PasswordEncoder passwordEncoder

    def index() { }

    def restPedidosRealizados() {
        def usuarioJson = request.JSON
        def usuario = null

        if (Usuario.findById(usuarioJson.getAt("usuario_id") as Long) != null) {
            usuario = Usuario.findById(usuarioJson.getAt("usuario_id") as Long)

            if (usuario.id == usuarioJson.getAt("usuario_id") && UsuarioPerfil.findByUsuarioAndPerfil(usuario, Perfil.findByAuthority("ROLE_ADMIN"))) {
                //Si es usuario entonces se le devuelve la data

                render Compra.list() as JSON
            } else {
                render null as JSON
            }
        } else {
            render null as JSON
        }
    }
}
