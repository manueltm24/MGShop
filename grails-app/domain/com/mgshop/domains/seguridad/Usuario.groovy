package com.mgshop.domains.seguridad

import com.mgshop.domains.ArticuloCarrito


class Usuario {

    String nombre
    String correoElectronico
    String password
    String username

    String apellido
    String state
    String city
    String address
    String zip


    Set<Perfil> getAuthorities() {
        (UsuarioPerfil.findAllByUsuario(this) as List<UsuarioPerfil>)*.perfil as Set<Perfil>
    }

    static hasMany = [carroDeCompras: ArticuloCarrito ]


    static constraints = {
        carroDeCompras nullable: true
        apellido nullable: true
        state nullable: true
        city nullable: true
        address nullable: true
        zip nullable: true

        password blank: false, password: true
        username blank: false, unique: true
    }

    static mapping = {
        table 'seg_usuario'
        password column: '`password`'
    }
}
