a<!DOCTYPE html>
<html lang="en">
<head>
    <title>Plus - E-Commerce Template</title>
    <meta charset="utf-8">
    <meta name="description" content="Plus E-Commerce Template">
    <meta name="author" content="Diamant Gjota" />
    <meta name="keywords" content="plus, html5, css3, template, ecommerce, e-commerce, bootstrap, responsive, creative" />
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">

    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!--Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">

    <!-- css files -->
    <asset:link rel="stylesheet" href="MGShop/bootstrap.min.css"/>
    <asset:link rel="stylesheet" href="MGShop/font-awesome.min.css"/>
    <asset:link rel="stylesheet" href="MGShop/owl.carousel.min.css"/>
    <asset:link rel="stylesheet" href="MGShop/owl.theme.default.min.css"/>
    <asset:link rel="stylesheet" href="MGShop/animate.css"/>
    <asset:link rel="stylesheet" href="MGShop/swiper.css"/>
    <asset:link rel="stylesheet" href="MGShop/default.css"/>



    <!-- Google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i,900,900i&subset=cyrillic,cyrillic-ext,latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:100,300,400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800&amp;subset=latin-ext" rel="stylesheet">

</head>
<body>
<!-- start section -->
<section class="section white-backgorund">
    <div class="container">
        <div class="row">
            <!-- start sidebar -->
            <div class="col-sm-3">

            </div><!-- end col -->
        <!-- end sidebar -->
            <div class="col-sm-9">
                <div class="row">
                    <div class="col-sm-12 text-left">
                        <h2 class="title">Iniciar sesion</h2>
                    </div><!-- end col -->
                </div><!-- end row -->

                <hr class="spacer-5"><hr class="spacer-20 no-border">

                <div class="row">
                    <div class="col-sm-12 col-md-10 col-lg-8">
                        <g:if test='${flash.message}'>
                            <div class="login_message">${flash.message}</div>
                        </g:if>
                        <form class="form-horizontal" action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm">
                            <div class="form-group">
                                <label for="email" class="col-sm-2 control-label">Usuario: </label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control input-md" id="username" name="${usernameParameter ?: 'username'}" placeholder="Nombre de usuario">
                                </div>
                            </div><!-- end form-group -->
                            <div class="form-group">
                                <label for="password" class="col-sm-2 control-label">Contraseña: </label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control input-md" id="password" name="${passwordParameter ?: 'password'}" placeholder="Contraseña">
                                </div>
                            </div><!-- end form-group -->
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-default round btn-md">Iniciar Sesión</button>
                                </div>
                            </div><!-- end form-group -->
                        </form>
                    </div><!-- end col -->
                </div><!-- end row -->
            </div><!-- end col -->
        </div><!-- end row -->
    </div><!-- end container -->
</section>
<!-- end section -->


<!-- JavaScript Files -->
<asset:javascript src="MGShop/jquery-3.1.1.min.js"/>
<asset:javascript src="MGShop/bootstrap.min.js"/>
<asset:javascript src="MGShop/owl.carousel.min.js"/>
<asset:javascript src="MGShop/jquery.downCount.js"/>
<asset:javascript src="MGShop/nouislider.min.js"/>
<asset:javascript src="MGShop/jquery.sticky.js"/>
<asset:javascript src="MGShop/pace.min.js"/>
<asset:javascript src="MGShop/star-rating.min.js"/>
<asset:javascript src="MGShop/wow.min.js"/>
<asset:javascript src="MGShop/gmaps.js"/>
<asset:javascript src="MGShop/swiper.min.js"/>
<asset:javascript src="MGShop/main.js"/>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>
</body>
</html>
