package com.mgshop.domains.seguridad

import grails.compiler.GrailsCompileStatic
import grails.gorm.DetachedCriteria
import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString


@GrailsCompileStatic
@EqualsAndHashCode(includes='authority')
@ToString(cache=true, includeNames=true, includePackage=false)
class UsuarioPerfil implements Serializable {

    private static final long serialVersionUID = 1

    long id

    Usuario usuario
    Perfil perfil

//
//    @Override
//    boolean equals(other) {
//        if (other instanceof UsuarioPerfil) {
//            other.usuarioId == usuario?.id && other.perfilId == perfil?.id
//        }
//    }
//
//    @Override
//    int hashCode() {
//        int hashCode = HashCodeHelper.initHash()
//        if (usuario) {
//            hashCode = HashCodeHelper.updateHash(hashCode, usuario.id)
//        }
//        if (perfil) {
//            hashCode = HashCodeHelper.updateHash(hashCode, perfil.id)
//        }
//        hashCode
//    }

    static UsuarioPerfil get(long usuarioId, long perfilId) {
        criteriaFor(usuarioId, perfilId).get()
    }

    static boolean exists(long usuarioId, long perfilId) {
        criteriaFor(usuarioId, perfilId).count()
    }

    private static DetachedCriteria criteriaFor(long usuarioId, long perfilId) {
        where {
            usuario == Usuario.findById(usuarioId) && perfil == Perfil.findById(perfilId)
        }
    }

    static UsuarioPerfil create(Usuario usuario, Perfil perfil, boolean flush = false) {
        def instance = new UsuarioPerfil(usuario: usuario, perfil: perfil)
        instance.save(flush: flush)
        instance
    }

    static boolean remove(Usuario u, Perfil r) {
        if (u != null && r != null) {
            where { usuario == u && perfil == r }.deleteAll()
        }
    }

    static int removeAll(Usuario u) {
        u == null ? 0 : where { usuario == u }.deleteAll() as int
    }

    static int removeAll(Perfil r) {
        r == null ? 0 : where { perfil == r }.deleteAll() as int
    }

    static constraints = {
        usuario nullable: false
        perfil nullable: false, validator: { Perfil r, UsuarioPerfil ur ->
            if (ur.usuario.id) {
                if (exists(ur.usuario.id, r.id)) {
                    return ['userRole.exists']
                }
            }
        }
    }

    static mapping = {
        id composite: ['usuario', 'perfil']
        version false
    }
}

