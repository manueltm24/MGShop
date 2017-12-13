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
                        <canvas id="line_chart" width="200" height="60"></canvas>
                    </div>
                </div>
            </div><!-- end container -->
        </section>
        <!-- end section -->


        <!-- start section -->
        <section class="section white-background">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="title-wrap">
                            <h2 class="title"><span class="text-primary">Despachos</span> pendientes</h2>
                        </div>
                    </div><!-- end col -->
                </div><!-- end row -->

                <div class="row">

                </div>
            </div><!-- end container -->
        </section>
        <!-- end section -->

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

                </div>
            </div><!-- end container -->
        </section>
        <!-- end section -->
        <script>
        var ctx = $("#line_chart");
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: [${jsonMap1x}],
                datasets: [{
                    label: 'Total de compra',
                    data: [${jsonMap2y}],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero:true
                        }
                    }]
                }
            }
        });

        console.log("Chart loaded...");
        </script>
    </content>
</g:applyLayout>