package com.mgshop.controllers

import com.mgshop.domains.Compra
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_USUARIO"])
class GraficosController {

    def index() {
//        [jsonMapx: Compra.jsonStringX, jsonMapy: Compra.jsonStringY]
    }
}
