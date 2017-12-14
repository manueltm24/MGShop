<g:applyLayout name="main">

    <content tag="body">
        <!-- start section -->
        <section class="section white-background">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="title-wrap">
                            <h2 class="title"><span class="text-primary">Compras</span> realizadas</h2>
                        </div>
                    </div><!-- end col -->
                </div><!-- end row -->

                <div class="row">
                    <div>
                        <div id="line_chart_compras_realizadas"></div>
                        <gvisualization:lineCoreChart dynamicLoading="${true}" elementId="line_chart_compras_realizadas" title="Compras realizadas totales"
                                                     width="${800}" height="${400}" columns="${cols1}" data="${data1}"/>
                    </div>
                </div>
            </div><!-- end container -->
        </section>
        <!-- end section -->


        %{--<!-- start section -->--}%
        %{--<section class="section white-background">--}%
            %{--<div class="container">--}%
                %{--<div class="row">--}%
                    %{--<div class="col-sm-12">--}%
                        %{--<div class="title-wrap">--}%
                            %{--<h2 class="title"><span class="text-primary">Despachos</span> pendientes</h2>--}%
                        %{--</div>--}%
                    %{--</div><!-- end col -->--}%
                %{--</div><!-- end row -->--}%

                %{--<div class="row">--}%

                %{--</div>--}%
            %{--</div><!-- end container -->--}%
        %{--</section>--}%
        %{--<!-- end section -->--}%

        <!-- start section -->
        <section class="section white-background">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="title-wrap">
                            <h2 class="title"><span class="text-primary">Despachos realizados</span> al dia de hoy</h2>
                        </div>
                    </div><!-- end col -->
                </div><!-- end row -->

                <div class="row">
                <div id="bar_chart_despachos_al_dia_de_hoy"></div>
                <gvisualization:barCoreChart dynamicLoading="${true}" elementId="bar_chart_despachos_al_dia_de_hoy" title="Despachos realizados al dia de hoy"
                                              width="${800}" height="${400}" columns="${cols2}" data="${data2}"/>
                </div>
            </div><!-- end container -->
        </section>
        <!-- end section -->
    </content>

</g:applyLayout>