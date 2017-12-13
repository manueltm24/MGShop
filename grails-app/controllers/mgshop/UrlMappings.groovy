package mgshop

import com.mgshop.domains.seguridad.Usuario

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"index" ,controller: "tienda")
        "500"(view:'/error')
        "404"(view:'/notFound')

        "/API/$action?"(controller: "usuarioRest")
        "/API/$action?"(controller: "comprasRest")
    }
}
