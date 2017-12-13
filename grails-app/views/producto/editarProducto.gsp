<g:applyLayout name="main">
    <content tag="body">
        <section class="section white-backgorund">
            <div class="container">
                %{--<div class="row">--}%
                %{--<!-- start sidebar -->--}%
                %{--<div class="col-sm-3">--}%
                %{--<div class="widget">--}%
                %{--<h6 class="subtitle">New Collection</h6>--}%
                %{--<figure>--}%
                %{--<a href="javascript:void(0);">--}%
                %{--<img src="img/products/men_06.jpg" alt="collection">--}%
                %{--</a>--}%
                %{--</figure>--}%
                %{--</div><!-- end widget -->--}%
                %{--</div><!-- end col -->--}%
                <!-- end sidebar -->
                <div class="col-sm-9">
                    <div class="row">
                        <div class="col-sm-12 text-left">
                            <h2 class="title">Crear nuevo producto</h2>
                        </div><!-- end col -->
                    </div><!-- end row -->

                    <hr class="spacer-5"><hr class="spacer-20 no-border">

                    <div class="row">
                        <div class="col-sm-12 col-md-10 col-lg-12">
                            <g:form  enctype="multipart/form-data" action="procesarCrearProducto_Editar" >
                                <input hidden="hidden" value="${producto.id}" type="text"  name="idProducto" id="idProducto" />

                                %{--<div class="form-group">--}%
                                    %{--<label for="productImage">Image: </label>--}%
                                    %{--<input value="${producto.productImage}" type="file" accept="image/*" class="form-control" name="productImage" id="productImage" />--}%
                                %{--</div>--}%
                                <div class="form-group">
                                    <label for="title">Title: </label>
                                    <input value="${producto.title}" type="text" class="form-control" name="title" id="title" />
                                </div>
                                <div class="form-group">
                                    <label for="description">Description: </label>
                                    <textarea class="form-control" name="description" id="description" rows="4">${producto.description} </textarea>
                                </div>
                                <div class="form-group">
                                    <label for="price">Price: </label>
                                    <div class="input-group">
                                        <span class="input-group-addon">$</span>
                                        <input value="${producto.price}" type="number" step="0.1" class="form-control" name="price" id="price" />
                                    </div>

                                </div>
                                <div class="form-group">
                                    <label for="quantity">Quantity: </label>
                                    <input value="${producto.quantity}" type="number" step="1" class="form-control" name="quantity" id="quantity" />
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-0 col-sm-10">
                                        <button type="summit" id="guardar"  class="btn btn-default round btn-md">Guardar</button>
                                        %{--<a href="javascript:void(0);" class="btn btn-default round btn-md"><i class="fa fa-user mr-5"></i> Registrar</a>--}%
                                    </div>
                                </div><!-- end form-group -->

                            </g:form>
                        </div><!-- end col -->
                    </div><!-- end row -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
        </section>

    </content>
</g:applyLayout>