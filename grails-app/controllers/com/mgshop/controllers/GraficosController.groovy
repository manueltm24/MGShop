package com.mgshop.controllers

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_USUARIO"])
class GraficosController {

    def index() {
        
    }
}
