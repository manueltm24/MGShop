package com.mgshop.controllers

import com.mgshop.domains.Compra
import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN", "ROLE_DEPARTAMENTOALMACEN","ROLE_CONSUMIDORFINAL","ROLE_PERSONAJURIDICA"])
class GraficosController {

    def index() {

        //COMPRAS REALIZADAS
        def cols1 = [['string', 'Fecha'], ['number', 'Total']]

        def data1 = []

        for(Compra compra : Compra.list()) {
            data1.add(['' + compra.dateCreated, ''+ compra.total])
        }

        //DESPACHOS REALIZADOS DEL DIA ACTUAL

        def cols2 = [['string', 'Fecha'], ['number', 'Total']]

        def data2 = []

        for (Compra compra : Compra.findAllByHabilitadoAndEstadoDespacho(true,true).asList()) {
            data2.add(['' + compra.dateCreated, ''+ compra.total])
        }

        [cols1: cols1, data1: data1, cols2: cols2, data2: data2]
    }
}
