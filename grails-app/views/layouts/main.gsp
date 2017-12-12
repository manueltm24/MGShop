<!DOCTYPE html>
<html lang="en">
<head>
    <title>MGShop</title>
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

    <!-- Icons -->

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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

    <g:pageProperty name="page.header"/></head>
<body>
<!-- start section -->
<section class="primary-background hidden-xs">
    <div class="container-fluid">
        <div class="row grid-space-0">
            <div class="col-sm-12">
                <figure>
                    <a href="category.html">
                        <asset:image src="MGShop/banners/top_banner.jpg" alt=""/>
                    </a>
                </figure>
            </div><!-- end col -->
        </div><!-- end row -->
    </div><!-- end container -->
</section>
<!-- end section -->

<!-- start topBar -->
<div class="topBar">
    <div class="container">
        <ul class="list-inline pull-left hidden-sm hidden-xs">
            <li><span class="text-primary">Have a question?</span> Call +123 4567 8910</li>
        </ul>

        <ul class="topBarNav pull-right">
            <li class="linkdown">
                <a href="javascript:void(0);">
                    <i class="fa fa-user mr-5"></i>
                    <span class="hidden-xs">
                        Mi cuenta
                        <i class="fa fa-angle-down ml-5"></i>
                    </span>
                </a>
                <ul class="w-125">
                    <g:form controller="logout" method="post">
                        <input type="submit" class="btn btn-default btn-flat" value="Cerrar Sesión"/>
                    </g:form>
                    <li class="divider"></li>
                    <li><a href="/carrito/index">Mi Carrito</a></li>
                    <li><a href="checkout.html">Checkout</a></li>
                </ul>
            </li>
            <li class="linkdown">
                <a href="javascript:void(0);">
                    <i class="fa fa-shopping-basket mr-5"></i>
                    <span class="hidden-xs">
                        Cart<sup class="text-primary">(3)</sup>
                        <i class="fa fa-angle-down ml-5"></i>
                    </span>
                </a>
                <ul class="cart w-250">
                    <li>
                        <div class="cart-items">
                            <ol class="items">
                                <li>
                                    <a href="shop-single-product-v1.html" class="product-image">
                                        <asset:image src="MGShop/products/men_06.jpg" alt="Sample Product "/>
                                    </a>
                                    <div class="product-details">
                                        <div class="close-icon">
                                            <a href="javascript:void(0);"><i class="fa fa-close"></i></a>
                                        </div>
                                        <p class="product-name">
                                            <a href="shop-single-product-v1.html">Lorem Ipsum dolor sit</a>
                                        </p>
                                        <strong>1</strong> x <span class="price text-primary">$59.99</span>
                                    </div><!-- end product-details -->
                                </li><!-- end item -->
                                <li>
                                    <a href="shop-single-product-v1.html" class="product-image">
                                        <asset:image src="MGShop/products/shoes_01.jpg" alt="Sample Product "/>
                                    </a>
                                    <div class="product-details">
                                        <div class="close-icon">
                                            <a href="javascript:void(0);"><i class="fa fa-close"></i></a>
                                        </div>
                                        <p class="product-name">
                                            <a href="shop-single-product-v1.html">Lorem Ipsum dolor sit</a>
                                        </p>
                                        <strong>1</strong> x <span class="price text-primary">$39.99</span>
                                    </div><!-- end product-details -->
                                </li><!-- end item -->
                                <li>
                                    <a href="shop-single-product-v1.html" class="product-image">
                                        <asset:image src="MGShop/products/bags_07.jpg" alt="Sample Product "/>
                                    </a>
                                    <div class="product-details">
                                        <div class="close-icon">
                                            <a href="javascript:void(0);"><i class="fa fa-close"></i></a>
                                        </div>
                                        <p class="product-name">
                                            <a href="shop-single-product-v1.html">Lorem Ipsum dolor sit</a>
                                        </p>
                                        <strong>1</strong> x <span class="price text-primary">$29.99</span>
                                    </div><!-- end product-details -->
                                </li><!-- end item -->
                            </ol>
                        </div>
                    </li>
                    <li>
                        <div class="cart-footer">
                            <a href="cart.html" class="pull-left"><i class="fa fa-cart-plus mr-5"></i>Ver Carrito</a>
                            <a href="checkout.html" class="pull-right"><i class="fa fa-shopping-basket mr-5"></i>Checkout</a>
                        </div>
                    </li>
                </ul>
            </li>
        </ul>
    </div><!-- end container -->
</div>
<!-- end topBar -->

<div class="middleBar">
    <div class="container">
        <div class="row display-table">
            <div class="col-sm-3 vertical-align text-left hidden-xs">
                <a href="javascript:void(0);">
                    <asset:image width="160" src="MGShop/MGShop.png" alt=""/>
                </a>
            </div><!-- end col -->
        </div><!-- end  row -->
    </div><!-- end container -->
</div><!-- end middleBar -->

<!-- start navbar -->
<div class="navbar yamm navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" data-toggle="collapse" data-target="#navbar-collapse-3" class="navbar-toggle">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="javascript:void(0);" class="navbar-brand visible-xs">
                <asset:image src="MGShop/logo.png" alt="logo"/>
            </a>
        </div>
        <div id="navbar-collapse-3" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="/">Tienda</a></li>


                <li class="dropdown active"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Productos<i class="fa fa-angle-down ml-5"></i></a>
                    <ul role="menu" class="dropdown-menu">
                        <li><a href="/producto/crearProducto">Crear producto</a></li>
                        <li><a href="home-v2.html">Listado de productos</a></li>
                    </ul><!-- end ul dropdown-menu -->
                </li><!-- end li dropdown -->
            <!-- Features -->
                <li class="dropdown left"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Usuario<i class="fa fa-angle-down ml-5"></i></a>
                    <ul class="dropdown-menu">
                        <li><a href="/usuario/crearUsuario">Crear usuario</a></li>
                        <li><a href="/usuario/listadoUsuarios">Listado de usuarios</a></li>
                    </ul><!-- end ul dropdown-menu -->
                </li><!-- end li dropdown -->
            </ul><!-- end navbar-nav -->
        </div><!-- end navbar collapse -->
    </div><!-- end container -->
</div><!-- end navbar -->

<!-- Page Body -->
<main id="site-main">
    <div class="container">
        <br>
        <g:pageProperty name="page.body"/>
    </div>
    <!-- /.container-fluid -->
</main>
<!-- /#site-main -->


<!-- Page Footer -->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="icon-boxes style1">
                    <div class="icon">
                        <i class="fa fa-truck text-gray"></i>
                    </div><!-- end icon -->
                    <div class="box-content">
                        <h6 class="alt-font text-light text-uppercase">Free Shipping</h6>
                        <p class="text-gray">Aenean semper lacus sed molestie sollicitudin.</p>
                    </div>
                </div><!-- icon-box -->
            </div><!-- end col -->
            <div class="col-sm-3">
                <div class="icon-boxes style1">
                    <div class="icon">
                        <i class="fa fa-life-ring text-gray"></i>
                    </div><!-- end icon -->
                    <div class="box-content">
                        <h6 class="alt-font text-light text-uppercase">Support 24/7</h6>
                        <p class="text-gray">Aenean semper lacus sed molestie sollicitudin.</p>
                    </div>
                </div><!-- icon-box -->
            </div><!-- end col -->
            <div class="col-sm-3">
                <div class="icon-boxes style1">
                    <div class="icon">
                        <i class="fa fa-gift text-gray"></i>
                    </div><!-- end icon -->
                    <div class="box-content">
                        <h6 class="alt-font text-light text-uppercase">Gift cards</h6>
                        <p class="text-gray">Aenean semper lacus sed molestie sollicitudin.</p>
                    </div>
                </div><!-- icon-box -->
            </div><!-- end col -->
            <div class="col-sm-3">
                <div class="icon-boxes style1">
                    <div class="icon">
                        <i class="fa fa-credit-card text-gray"></i>
                    </div><!-- end icon -->
                    <div class="box-content">
                        <h6 class="alt-font text-light text-uppercase">Payment 100% Secure</h6>
                        <p class="text-gray">Aenean semper lacus sed molestie sollicitudin.</p>
                    </div>
                </div><!-- icon-box -->
            </div><!-- end col -->
        </div><!-- end row -->

        <hr class="spacer-30">

        <div class="row">
            <div class="col-sm-3">
                <h5 class="title">Plus</h5>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin suscipit, libero a molestie consectetur, sapien elit lacinia mi.</p>

                <hr class="spacer-10 no-border">

                <ul class="social-icons">
                    <li class="facebook"><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                    <li class="twitter"><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                    <li class="dribbble"><a href="javascript:void(0);"><i class="fa fa-dribbble"></i></a></li>
                    <li class="linkedin"><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                    <li class="youtube"><a href="javascript:void(0);"><i class="fa fa-youtube"></i></a></li>
                    <li class="behance"><a href="javascript:void(0);"><i class="fa fa-behance"></i></a></li>
                </ul>
            </div><!-- end col -->
            <div class="col-sm-3">
                <h5 class="title">My Account</h5>
                <ul class="list alt-list">
                    <li><a href="my-account.html"><i class="fa fa-angle-right"></i>My Account</a></li>
                    <li><a href="wishlist.html"><i class="fa fa-angle-right"></i>Wishlist</a></li>
                    <li><a href="cart.html"><i class="fa fa-angle-right"></i>My Cart</a></li>
                    <li><a href="checkout.html"><i class="fa fa-angle-right"></i>Checkout</a></li>
                </ul>
            </div><!-- end col -->
            <div class="col-sm-3">
                <h5 class="title">Information</h5>
                <ul class="list alt-list">
                    <li><a href="about-us-v1.html"><i class="fa fa-angle-right"></i>About Us</a></li>
                    <li><a href="faq.html"><i class="fa fa-angle-right"></i>FAQ</a></li>
                    <li><a href="privacy-policy.html"><i class="fa fa-angle-right"></i>Privacy Policy</a></li>
                    <li><a href="contact-v1.html"><i class="fa fa-angle-right"></i>Contact Us</a></li>
                </ul>
            </div><!-- end col -->
            <div class="col-sm-3">
                <h5 class="title">Payment Methods</h5>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                <ul class="list list-inline">
                    <li class="text-white"><i class="fa fa-cc-visa fa-2x"></i></li>
                    <li class="text-white"><i class="fa fa-cc-paypal fa-2x"></i></li>
                    <li class="text-white"><i class="fa fa-cc-mastercard fa-2x"></i></li>
                    <li class="text-white"><i class="fa fa-cc-discover fa-2x"></i></li>
                </ul>
            </div><!-- end col -->
        </div><!-- end row -->

        <hr class="spacer-30">

        <div class="row text-center">
            <div class="col-sm-12">
                <p class="text-sm">&COPY; 2017. Made with <i class="fa fa-heart text-danger"></i> by <a href="javascript:void(0);">DiamondCreative.</a></p>
            </div><!-- end col -->
        </div><!-- end row -->
    </div><!-- end container -->
</footer>

<!-- /#site-footer -->

</body>
</html>
