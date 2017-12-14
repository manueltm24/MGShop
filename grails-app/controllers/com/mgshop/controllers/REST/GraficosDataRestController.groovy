package com.mgshop.controllers.REST

import com.mgshop.domains.Compra
import grails.converters.JSON

class GraficosDataRestController {

    def index() { }

    def comprasRealizadasTotales() {
        def json1x = []
        def json1y = []

        for (Compra compra : Compra.list()) {
            json1x.add("" + compra.dateCreated.toString() + "")
            json1y.add(compra.total as Number)
        }

        render json1x as JSON
        render json1y as JSON
    }
}
