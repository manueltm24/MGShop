<g:applyLayout name="main">
    <content tag="body">
        <section class="section white-backgorund">
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">
                        <div class="row">
                            <div class="col-sm-12 text-left">
                                <h2 class="title">Mi carrito</h2>
                            </div><!-- end col -->
                        </div><!-- end row -->

                        <hr class="spacer-5"><hr class="spacer-20 no-border">

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="table-responsive">
                                    <table class="table table-striped">
                                        <thead>
                                        <tr>
                                            <th colspan="2">Producto</th>
                                            <th>Precio</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <g:each in="${usuario.carroDeCompras}" var="producto">
                                            <tr>
                                                <td>
                                                    <a href="shop-single-product-v1.html">
                                                        <img
                                                             src="/producto/render_image/${producto.producto.id}"
                                                             alt=""
                                                             width="60px" />
                                                    </a>
                                                </td>
                                                <td>
                                                    <h6 class="regular"><a href="shop-single-product-v1.html">${producto.producto.title}</a></h6>
                                                    <p>${producto.producto.description}</p>
                                                </td>
                                                <td>
                                                    <span>$${producto.producto.price}</span>
                                                </td>
                                            </tr>
                                        </g:each>
                                        </tbody>
                                    </table><!-- end table -->
                                </div><!-- end table-responsive -->

                                <hr class="spacer-10 no-border">

                                <a href="/" class="btn btn-light semi-circle btn-md pull-left">
                                    <i class="fa fa-arrow-left mr-5"></i> Continuar comprando
                                </a>

                                <a href="/carrito/checkout" class="btn btn-default semi-circle btn-md pull-right">
                                    Checkout <i class="fa fa-arrow-right ml-5"></i>
                                </a>
                            </div><!-- end col -->
                        </div><!-- end row -->
                    </div><!-- end col -->
                </div><!-- end row -->
            </div><!-- end container -->
        </section>

    </content>
</g:applyLayout>