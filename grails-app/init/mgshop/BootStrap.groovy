package mgshop

import com.mgshop.domains.seguridad.Perfil
import com.mgshop.domains.seguridad.Requestmap
import com.mgshop.domains.seguridad.Usuario
import com.mgshop.domains.seguridad.UsuarioPerfil

class BootStrap {
    def init = { servletContext ->

        println "Inicializando la Aplicación"




        Usuario usuario =Usuario.findByNombre("Administrador") ? null :new Usuario(username: "admin", correoElectronico: "admin@gmail.com", password: "admin", nombre: "Administrador").save(flush: true, failOnError: true)

        if(usuario) {
            Perfil.findByAuthority("ROLE_DEPARTAMENTOALMACEN") ?: new Perfil(authority: "ROLE_DEPARTAMENTOALMACEN").save(flush: true, failOnError: true)
            Perfil.findByAuthority("ROLE_CONSUMIDORFINAL") ?: new Perfil(authority: "ROLE_CONSUMIDORFINAL").save(flush: true, failOnError: true)
            Perfil.findByAuthority("ROLE_PERSONAJURIDICA") ?: new Perfil(authority: "ROLE_PERSONAJURIDICA").save(flush: true, failOnError: true)
            Perfil.findByAuthority("ROLE_ADMIN") ?: new Perfil(authority: "ROLE_ADMIN").save(flush: true, failOnError: true)
            Perfil.findByAuthority("ROLE_USUARIO") ?: new Perfil(authority: "ROLE_USUARIO").save(flush: true, failOnError: true)


            UsuarioPerfil.create(usuario, Perfil.findByAuthority("ROLE_ADMIN"))



            for (String url in [
                    '/', '/error', '/index', '/index.gsp', '/**/favicon.ico', '/shutdown',
                    '/assets/**', '/**/js/**', '/**/css/**', '/**/images/**',
                    '/login', '/login.*', '/login/*',
                    '/logout', '/logout.*', '/logout/*', '/dbconsole/**']) {
                new Requestmap(url: url, configAttribute: 'permitAll,ROLE_ANONYMOUS').save(flush: true, failOnError: true)
            }


            new Requestmap(url: '/console/**', configAttribute: 'ROLE_ADMIN').save(flush: true, failOnError: true)
            new Requestmap(url: '/plugins/console*/**', configAttribute: 'ROLE_ADMIN').save(flush: true, failOnError: true)
            new Requestmap(url: '/static/console/**', configAttribute: 'ROLE_ADMIN').save(flush: true, failOnError: true)
            new Requestmap(url: '/profile/**', configAttribute: 'ROLE_USER').save(flush: true, failOnError: true)
            new Requestmap(url: '/admin/**', configAttribute: 'ROLE_ADMIN').save(flush: true, failOnError: true)
            new Requestmap(url: '/admin/role/**', configAttribute: 'ROLE_ADMIN').save(flush: true, failOnError: true)
            new Requestmap(url: '/admin/user/**', configAttribute: 'ROLE_ADMIN').save(flush: true, failOnError: true)
            new Requestmap(url: '/login/impersonate', configAttribute: 'ROLE_SWITCH_USER,isFullyAuthenticated()').save(flush: true, failOnError: true)
        }
    }
    def destroy = {
    }
}
