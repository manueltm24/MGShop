<g:applyLayout name="main">
    <content tag="body">
        <section class="section light-backgorund">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="title-wrap">
                            <h2 class="title">Listado de usuarios</h2>
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
                                    <th>Fotografía</th>
                                    <th>Nombre</th>
                                    <th>Cantidad existente</th>
                                    <th>Precio</th>
                                    <th>Acciones</th>
                                </tr>
                                </thead>
                                <tbody>
                                <g:each in="${listadoProductos}" var="producto">
                                    <tr>

                                        <td scope="row">${producto.id}</td>
                                        <td>
                                            <a href="shop-single-product-v1.html">
                                                <img
                                                        src="/producto/render_image/${producto.id}"
                                                        alt=""
                                                        width="60px" />
                                            </a>
                                        </td>

                                        <td>${producto.title}</td>
                                        <td>${producto.quantity}</td>
                                        <td>
                                            <span>$${producto.price}</span>
                                        </td>
                                        <td>

                                            <g:link action="editarProducto" params="[idProducto: producto.id]" controller="producto" ><button type="button" class="btn btn-default round btn-md"><b>Editar</b></button></g:link>

                                            <g:form params="[idProducto: producto.id]" action="eliminarProducto" >
                                                <button type="summit" class="btn btn-danger round btn-md">Eliminar</button>
                                            </g:form>



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
    </content>
</g:applyLayout>