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
                                <h2 class="title">Crear nuevo usuario</h2>
                            </div><!-- end col -->
                        </div><!-- end row -->

                        <hr class="spacer-5"><hr class="spacer-20 no-border">

                        <div class="row">
                            <div class="col-sm-12 col-md-10 col-lg-12">
                                <g:form action="procesarNuevoUsuario" class="form-horizontal">
                                    <div class="form-group">
                                        <label for="nombre" class="col-sm-2 control-label">Nombre</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control input-md" id="nombre" name="nombre" placeholder="Nombre">
                                        </div>
                                    </div><!-- end form-group -->
                                    <div class="form-group">
                                        <label for="nombre" class="col-sm-2 control-label">Username</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control input-md" id="username" name="username" placeholder="Username">
                                        </div>
                                    </div><!-- end form-group -->
                                    <div class="form-group">
                                        <label for="correoElectronico" class="col-sm-2 control-label">Correo electronico <span class="text-danger">*</span></label>
                                        <div class="col-sm-10">
                                            <input type="email" class="form-control input-md" id="correoElectronico" name="correoElectronico" placeholder="Correo electronico">
                                        </div>
                                    </div><!-- end form-group -->
                                    <div class="form-group">
                                        <label for="password" class="col-sm-2 control-label">Contraseña <span class="text-danger">*</span></label>
                                        <div class="col-sm-10">
                                            <input type="password" class="form-control input-md" id="password" name="password" placeholder="Contraseña">
                                        </div>
                                    </div><!-- end form-group -->
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
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