package com.mgshop.controllers

import com.mgshop.domains.ArticuloCompra
import com.mgshop.domains.Compra
import com.mgshop.domains.Producto
import com.mgshop.domains.seguridad.Perfil
import com.mgshop.domains.seguridad.Usuario
import com.mgshop.domains.seguridad.UsuarioPerfil
import grails.plugin.springsecurity.annotation.Secured
import net.sf.jasperreports.engine.*
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource
import net.sf.jasperreports.engine.export.JRPdfExporter
import net.sf.jasperreports.export.*

import java.sql.Connection
import java.sql.DriverManager

@Secured(["ROLE_ADMIN", "ROLE_USUARIO"])

class CarritoController {

    def springSecurityService

    def index() {
        Usuario usuario = (Usuario)springSecurityService.currentUser
        [usuario:usuario]
    }

    def checkout() {
//        List<Producto> listadoProductos = (List<Producto>)session.getAttribute("carritoUsuario")
        Usuario usuario = (Usuario)springSecurityService.currentUser
        [usuario:usuario]

    }
    def procesarCompra(){

        Usuario usuario = (Usuario)springSecurityService.currentUser

        println(params)

        def compra = new Compra(
                txnId: params.txn_id,
                user:usuario,
                total: new BigDecimal(params.payment_gross),
                address: params.address_street,
                city: params.address_city,
                zip: params.address_zip,
        )

        compra.save(failOnError: true, flush: true)



        compra.products = []
        usuario.carroDeCompras.each { articuloCarrito ->

            ArticuloCompra articuloCompra = new ArticuloCompra(producto: articuloCarrito.producto, cantidad: articuloCarrito.cantidad)
            articuloCompra.save(failOnError: true, flush: true)
            compra.products.add(articuloCompra)

            Producto producto = Producto.findById(articuloCompra.producto.id)
            producto.quantity--
            producto.save(failOnError: true, flush: true)


        }
        compra.save(failOnError: true, flush: true)

        def items = usuario.carroDeCompras
        usuario.carroDeCompras = null
        items.each {
            it.delete(flush:true)
        }

        usuario.refresh()

        Usuario.enviarCorreoUsuarioDespacho(UsuarioPerfil.findAllByPerfil(Perfil.findByAuthority("ROLE_DEPARTAMENTOALMACEN")).usuario,compra)


        redirect(uri:"/")

    }
    def despachoCompras(){
        [despachadas: Compra.findAllByHabilitadoAndEstadoDespacho(true,true), sinDespacho: Compra.findAllByHabilitadoAndEstadoDespacho(true,false)]
    }

    def realizarDespacho(String compraId){
        Usuario usuario = (Usuario)springSecurityService.currentUser
        Compra compra = Compra.findById(Long.parseLong(compraId))
        compra.estadoDespacho=true
        compra.modificadoPor=usuario.username
        compra.save(failOnError: true, flush: true)

        generarDespachoPDF(compraId);

        redirect(uri:"/carrito/despachoCompras")
    }

    def generarFacturaPDF() {
        String hostName = "localhost"
        String dbName = "mgshopdev"
        String userName = "mgshop"
        String password = "123456"

        String source_reporte = "/home/guhex/IdeaProjects/MGShop/mgshop_reports/factura.jrxml"
        JasperReport jasperReport = JasperCompileManager.compileReport(source_reporte)

        Class.forName("com.mysql.jdbc.Driver")

        String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName

        Connection conn = DriverManager.getConnection(connectionURL, userName, password)

        // Parameters for report
        Map<String, Object> parameters = new HashMap<String, Object>()

        JasperPrint print = JasperFillManager.fillReport(jasperReport,
                parameters, conn)

        // Make sure the output directory exists.
        File outDir = new File("/home/guhex/IdeaProjects/MGShop/facturas")
        outDir.mkdirs()

        // PDF Exportor.
        JRPdfExporter exporter = new JRPdfExporter()

        ExporterInput exporterInput = new SimpleExporterInput(print)
        // ExporterInput
        exporter.setExporterInput(exporterInput)

        // ExporterOutput
        OutputStreamExporterOutput exporterOutput = new SimpleOutputStreamExporterOutput(
                "/home/guhex/IdeaProjects/MGShop/facturas/factura_" + new Date().toString() + ".pdf")
        // Output
        exporter.setExporterOutput(exporterOutput)

        //
        SimplePdfExporterConfiguration configuration = new SimplePdfExporterConfiguration()
        exporter.setConfiguration(configuration)
        exporter.exportReport()

        System.out.print("Reporte exportado!")
        redirect(uri:"/")
    }

    def generarDespachoPDF(String compraId) {
        ByteArrayOutputStream pdfStream = null
        try {
            String reportName, jrxmlFileName, dotJasperFileName
            jrxmlFileName = "despacho"
            reportName = "/home/guhex/IdeaProjects/MGShop/mgshop_reports/despacho.jrxml"
            dotJasperFileName = "/home/guhex/IdeaProjects/MGShop/mgshop_reports/despacho.jasper"
            println reportName
            // Report parameter

            Map<String, Object> reportParam = new HashMap<String, Object>()
            def c = Compra.findById(Long.parseLong(compraId))
            def listItems = c.products

            def dataSource = new JRBeanCollectionDataSource(listItems)

            reportParam.put("client", c.user.nombre + " " + c.user.apellido)
            reportParam.put("total",'$' + c.total as String)
            reportParam.put("address", c.address)
            reportParam.put("city", c.city)
//            reportParam.put("invoiceDate",new Date())

            // compiles jrxml
            JasperCompileManager.compileReportToFile(reportName);
            // fills compiled report with parameters and a connection
            JasperPrint print = JasperFillManager.fillReport(dotJasperFileName, reportParam, dataSource);

            pdfStream = new ByteArrayOutputStream();
            // exports report to pdf
            JRExporter exporter = new JRPdfExporter()
            exporter.setParameter(JRExporterParameter.JASPER_PRINT, print)
            exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, pdfStream) // your output goes here

            exporter.exportReport()

        } catch (Exception e) {
            println e
            println e.message
            println "----PRINTED E -----"
        } finally {
            return pdfStream
        }
    }
}

