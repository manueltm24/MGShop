<g:applyLayout name="main">
    <content tag="body">
        <section class="section light-backgorund">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="title-wrap">
                            <h2 class="title">Listado de compras SIN DESPACHO</h2>
                        </div>
                    </div><!-- end col -->
                </div><!-- end row -->

                <div class="row">
                    <div class="col-sm-11">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Usuario</th>
                                    <th>Fecha</th>
                                    <th>Total</th>
                                    <th>Acciones</th>
                                </tr>
                                </thead>
                                <tbody>
                                <g:each in="${sinDespacho}" var="compra">
                                    <tr>

                                        <td scope="row">${compra.id}</td>

                                        <td>${compra.user.nombre}</td>
                                        <td>${compra.dateCreated}</td>
                                        <td>
                                            <span>$${compra.total}</span>
                                        </td>
                                        <td>

                                            <g:link action="realizarDespacho" params="[compraId: compra.id]" controller="carrito" ><button type="button" class="btn btn-default round btn-md"><b>Realizar despacho!</b></button></g:link>


                                        </td>
                                    </tr>
                                </g:each>
                                </tbody>
                            </table>
                        </div><!-- end table-responsive -->
                    </div><!-- end col -->
                </div><!-- end row -->



            </div><!-- end container -->
        </section>
        <section class="section light-backgorund">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="title-wrap">
                            <h2 class="title">Listado de compras DESPACHADAS</h2>
                        </div>
                    </div><!-- end col -->
                </div><!-- end row -->

                <div class="row">
                    <div class="col-sm-11">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Usuario</th>
                                    <th>Fecha</th>
                                    <th>Total</th>
                                    <th>Despachada por:</th>
                                </tr>
                                </thead>
                                <tbody>
                                <g:each in="${despachadas}" var="compra">
                                    <tr>

                                        <td scope="row">${compra.id}</td>

                                        <td>${compra.user.nombre}</td>
                                        <td>${compra.dateCreated}</td>
                                        <td>
                                            <span>$${compra.total}</span>
                                        </td>
                                        <td>${compra.modificadoPor}</td>

                                    </tr>
                                </g:each>
                                </tbody>
                            </table>
                        </div><!-- end table-responsive -->
                    </div><!-- end col -->
                </div><!-- end row -->

                %{--<div class="col-sm-offset-2 col-sm-10">--}%
                    %{--<g:link class="btn btn-default round btn-md" action="generarFacturaPDF">Generar factura</g:link>--}%
                %{--</div>--}%

            </div><!-- end container -->
        </section>

    </content>
</g:applyLayout>