<g:applyLayout name="main">

    <content tag="body">
        <!-- start section -->
        <section class="section white-background">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="title-wrap">
                            <h2 class="title"><span class="text-primary">Nuestros</span> Productos</h2>
                        </div>
                    </div><!-- end col -->
                </div><!-- end row -->

                <div class="row column-4">
                    <g:if test="${listadoProductos.size()>0}">

                        <g:each in="${listadoProductos}" var="producto">
                            <div class="col-sm-6 col-md-3">
                                <div class="thumbnail store style1">
                                    <div class="header">
                                        <figure class="layer">
                                            <a href="javascript:void(0);">
                                                <img class="img-responsive center-block"
                                                     src="/producto/render_image/${producto.id}"
                                                     alt=""
                                                     width="150px"
                                                     height="150px" />
                                                %{--<asset:image class="front" src="MGShop/products/men_01.jpg" alt=""/>--}%
                                                %{--<asset:image class="back" src="MGShop/products/men_02.jpg" alt=""/>--}%
                                                %{--<asset:image class="back" src="MGShop/products/men_02.jpg" alt=""/>--}%
                                                %{--<asset:image class="back" src="MGShop/products/men_02.jpg" alt=""/>--}%

                                            </a>
                                        </figure>
                                    </div>
                                    <div class="caption">
                                        <h6 class="regular"><a href="#">${producto.title}</a></h6>
                                        <div class="price">
                                            <span class="amount text-primary">$${producto.price}</span>
                                        </div>
                                        <a href="/tienda/anadirCarrito?producto=${producto.id}"><i class="fa fa-cart-plus mr-5"></i>Añadir al carrito</a>
                                    </div><!-- end caption -->
                                </div><!-- end thumbnail -->
                            </div><!-- end col -->
                        %{--</g:form>--}%


                        </g:each>


                    </g:if>
                    <g:else>
                        <h2>No hay productos disponibles</h2>
                    </g:else>

                    %{--<div class="col-sm-6 col-md-3">--}%
                        %{--<div class="thumbnail store style1">--}%
                            %{--<div class="header">--}%
                                %{--<div class="badges">--}%
                                    %{--<span class="product-badge top right danger-background text-white semi-circle">-20%</span>--}%
                                %{--</div>--}%
                                %{--<figure class="layer">--}%
                                    %{--<a href="javascript:void(0);">--}%
                                        %{--<asset:image src="MGShop/products/women_01.jpg" alt=""/>--}%
                                    %{--</a>--}%
                                %{--</figure>--}%
                                %{--<div class="icons">--}%
                                    %{--<a class="icon semi-circle" href="javascript:void(0);"><i class="fa fa-heart-o"></i></a>--}%
                                    %{--<a class="icon semi-circle" href="javascript:void(0);"><i class="fa fa-gift"></i></a>--}%
                                    %{--<a class="icon semi-circle" href="javascript:void(0);" data-toggle="modal" data-target=".productQuickView"><i class="fa fa-search"></i></a>--}%
                                %{--</div>--}%
                            %{--</div>--}%
                            %{--<div class="caption">--}%
                                %{--<h6 class="regular"><a href="shop-single-product-v1.html">Lorem Ipsum dolor sit</a></h6>--}%
                                %{--<div class="price">--}%
                                    %{--<small class="amount off">$68.99</small>--}%
                                    %{--<span class="amount text-primary">$59.99</span>--}%
                                %{--</div>--}%
                                %{--<a href="javascript:void(0);"><i class="fa fa-cart-plus mr-5"></i>Add to cart</a>--}%
                            %{--</div><!-- end caption -->--}%
                        %{--</div><!-- end thumbnail -->--}%
                    %{--</div><!-- end col -->--}%

                    %{--<div class="col-sm-6 col-md-3">--}%
                        %{--<div class="thumbnail store style1">--}%
                            %{--<div class="header">--}%
                                %{--<div class="badges">--}%
                                    %{--<span class="product-badge bottom left warning-background text-white semi-circle">Out of Stock</span>--}%
                                %{--</div>--}%
                                %{--<figure class="layer">--}%
                                    %{--<a href="javascript:void(0);">--}%
                                        %{--<asset:image src="MGShop/products/bags_01.jpg" alt=""/>--}%
                                    %{--</a>--}%
                                %{--</figure>--}%
                            %{--</div>--}%
                            %{--<div class="caption">--}%
                                %{--<h6 class="regular"><a href="shop-single-product-v1.html">Lorem Ipsum dolor sit</a></h6>--}%
                                %{--<div class="price">--}%
                                    %{--<small class="amount off">$68.99</small>--}%
                                    %{--<span class="amount text-primary">$59.99</span>--}%
                                %{--</div>--}%
                                %{--<a href="javascript:void(0);"><i class="fa fa-cart-plus mr-5"></i>Add to cart</a>--}%
                            %{--</div><!-- end caption -->--}%
                        %{--</div><!-- end thumbnail -->--}%
                    %{--</div><!-- end col -->--}%

                    %{--<div class="col-sm-6 col-md-3">--}%
                        %{--<div class="thumbnail store style1">--}%
                            %{--<div class="header">--}%
                                %{--<div class="badges">--}%
                                    %{--<span class="product-badge bottom right info-background text-white semi-circle">New</span>--}%
                                %{--</div>--}%
                                %{--<figure class="layer">--}%
                                    %{--<a href="javascript:void(0);">--}%
                                        %{--<asset:image src="MGShop/products/fashion_01.jpg" alt=""/>--}%
                                    %{--</a>--}%
                                %{--</figure>--}%
                                %{--<div class="icons">--}%
                                    %{--<a class="icon semi-circle" href="javascript:void(0);"><i class="fa fa-heart-o"></i></a>--}%
                                    %{--<a class="icon semi-circle" href="javascript:void(0);"><i class="fa fa-gift"></i></a>--}%
                                    %{--<a class="icon semi-circle" href="javascript:void(0);" data-toggle="modal" data-target=".productQuickView"><i class="fa fa-search"></i></a>--}%
                                %{--</div>--}%
                            %{--</div>--}%
                            %{--<div class="caption">--}%
                                %{--<h6 class="regular"><a href="shop-single-product-v1.html">Lorem Ipsum dolor sit</a></h6>--}%
                                %{--<div class="price">--}%
                                    %{--<small class="amount off">$68.99</small>--}%
                                    %{--<span class="amount text-primary">$59.99</span>--}%
                                %{--</div>--}%
                                %{--<a href="javascript:void(0);"><i class="fa fa-cart-plus mr-5"></i>Add to cart</a>--}%
                            %{--</div><!-- end caption -->--}%
                        %{--</div><!-- end thumbnail -->--}%
                    %{--</div><!-- end col -->--}%

                    %{--<div class="col-sm-6 col-md-3">--}%
                        %{--<div class="thumbnail store style1">--}%
                            %{--<div class="header">--}%
                                %{--<figure class="layer">--}%
                                    %{--<a href="javascript:void(0);">--}%
                                        %{--<asset:image src="MGShop/products/hoseholds_05.jpg" alt=""/>--}%
                                    %{--</a>--}%
                                %{--</figure>--}%
                                %{--<div class="icons">--}%
                                    %{--<a class="icon semi-circle" href="javascript:void(0);"><i class="fa fa-heart-o"></i></a>--}%
                                    %{--<a class="icon semi-circle" href="javascript:void(0);"><i class="fa fa-gift"></i></a>--}%
                                    %{--<a class="icon semi-circle" href="javascript:void(0);" data-toggle="modal" data-target=".productQuickView"><i class="fa fa-search"></i></a>--}%
                                %{--</div>--}%
                                %{--<ul class="countdown-product">--}%
                                    %{--<li>--}%
                                        %{--<span class="days">00</span>--}%
                                        %{--<p>Days</p>--}%
                                    %{--</li>--}%
                                    %{--<li>--}%
                                        %{--<span class="hours">00</span>--}%
                                        %{--<p>Hours</p>--}%
                                    %{--</li>--}%
                                    %{--<li>--}%
                                        %{--<span class="minutes">00</span>--}%
                                        %{--<p>Mins</p>--}%
                                    %{--</li>--}%
                                    %{--<li>--}%
                                        %{--<span class="seconds">00</span>--}%
                                        %{--<p>Secs</p>--}%
                                    %{--</li>--}%
                                %{--</ul><!-- end countdown -->--}%
                            %{--</div>--}%
                            %{--<div class="caption">--}%
                                %{--<h6 class="regular"><a href="shop-single-product-v1.html">Lorem Ipsum dolor sit</a></h6>--}%
                                %{--<div class="price">--}%
                                    %{--<small class="amount off">$68.99</small>--}%
                                    %{--<span class="amount text-primary">$59.99</span>--}%
                                %{--</div>--}%
                                %{--<a href="javascript:void(0);"><i class="fa fa-cart-plus mr-5"></i>Add to cart</a>--}%
                            %{--</div><!-- end caption -->--}%
                        %{--</div><!-- end thumbnail -->--}%
                    %{--</div><!-- end col -->--}%

                    %{--<div class="col-sm-6 col-md-3">--}%
                        %{--<div class="thumbnail store style1">--}%
                            %{--<div class="header">--}%
                                %{--<figure class="layer">--}%
                                    %{--<a href="javascript:void(0);">--}%
                                        %{--<asset:image src="MGShop/products/kids_01.jpg" alt=""/>--}%
                                    %{--</a>--}%
                                %{--</figure>--}%
                                %{--<div class="icons">--}%
                                    %{--<a class="icon semi-circle" href="javascript:void(0);"><i class="fa fa-heart-o"></i></a>--}%
                                    %{--<a class="icon semi-circle" href="javascript:void(0);"><i class="fa fa-gift"></i></a>--}%
                                    %{--<a class="icon semi-circle" href="javascript:void(0);" data-toggle="modal" data-target=".productQuickView"><i class="fa fa-search"></i></a>--}%
                                %{--</div>--}%
                            %{--</div>--}%
                            %{--<div class="caption">--}%
                                %{--<h6 class="regular"><a href="shop-single-product-v1.html">Lorem Ipsum dolor sit</a></h6>--}%
                                %{--<div class="price">--}%
                                    %{--<small class="amount off">$68.99</small>--}%
                                    %{--<span class="amount text-primary">$59.99</span>--}%
                                %{--</div>--}%
                                %{--<a href="javascript:void(0);"><i class="fa fa-cart-plus mr-5"></i>Add to cart</a>--}%
                            %{--</div><!-- end caption -->--}%
                        %{--</div><!-- end thumbnail -->--}%
                    %{--</div><!-- end col -->--}%

                    %{--<div class="col-sm-6 col-md-3">--}%
                        %{--<div class="thumbnail store style1">--}%
                            %{--<div class="header">--}%
                                %{--<figure class="layer">--}%
                                    %{--<a href="javascript:void(0);">--}%
                                        %{--<asset:image src="MGShop/products/shoes_01.jpg" alt=""/>--}%
                                    %{--</a>--}%
                                %{--</figure>--}%
                                %{--<div class="icons">--}%
                                    %{--<a class="icon semi-circle" href="javascript:void(0);"><i class="fa fa-heart-o"></i></a>--}%
                                    %{--<a class="icon semi-circle" href="javascript:void(0);"><i class="fa fa-gift"></i></a>--}%
                                    %{--<a class="icon semi-circle" href="javascript:void(0);" data-toggle="modal" data-target=".productQuickView"><i class="fa fa-search"></i></a>--}%
                                %{--</div>--}%
                            %{--</div>--}%
                            %{--<div class="caption">--}%
                                %{--<h6 class="regular"><a href="shop-single-product-v1.html">Lorem Ipsum dolor sit</a></h6>--}%
                                %{--<div class="price">--}%
                                    %{--<small class="amount off">$68.99</small>--}%
                                    %{--<span class="amount text-primary">$59.99</span>--}%
                                %{--</div>--}%
                                %{--<a href="javascript:void(0);"><i class="fa fa-cart-plus mr-5"></i>Add to cart</a>--}%
                            %{--</div><!-- end caption -->--}%
                        %{--</div><!-- end thumbnail -->--}%
                    %{--</div><!-- end col -->--}%

                    %{--<div class="col-sm-6 col-md-3">--}%
                        %{--<div class="thumbnail store style1">--}%
                            %{--<div class="header">--}%
                                %{--<figure class="layer">--}%
                                    %{--<a href="javascript:void(0);">--}%
                                        %{--<asset:image src="MGShop/products/technology_02.jpg" alt=""/>--}%
                                    %{--</a>--}%
                                %{--</figure>--}%
                                %{--<div class="icons">--}%
                                    %{--<a class="icon semi-circle" href="javascript:void(0);"><i class="fa fa-heart-o"></i></a>--}%
                                    %{--<a class="icon semi-circle" href="javascript:void(0);"><i class="fa fa-gift"></i></a>--}%
                                    %{--<a class="icon semi-circle" href="javascript:void(0);" data-toggle="modal" data-target=".productQuickView"><i class="fa fa-search"></i></a>--}%
                                %{--</div>--}%
                            %{--</div>--}%
                            %{--<div class="caption">--}%
                                %{--<h6 class="regular"><a href="shop-single-product-v1.html">Lorem Ipsum dolor sit</a></h6>--}%
                                %{--<div class="price">--}%
                                    %{--<small class="amount off">$68.99</small>--}%
                                    %{--<span class="amount text-primary">$59.99</span>--}%
                                %{--</div>--}%
                                %{--<a href="javascript:void(0);"><i class="fa fa-cart-plus mr-5"></i>Add to cart</a>--}%
                            %{--</div><!-- end caption -->--}%
                        %{--</div><!-- end thumbnail -->--}%
                    %{--</div><!-- end col -->--}%
                </div><!-- end row -->

                <hr class="spacer-30 no-border"/>
            </div><!-- end container -->
        </section>
        <!-- end section -->

        <!-- start section -->
        %{--<section class="primary-background">--}%
            %{--<div class="container">--}%
                %{--<div class="box-banner-wide primary-background">--}%
                    %{--<div class="row">--}%
                        %{--<div class="col-sm-4 vertical-align">--}%
                            %{--<h2 class="alt-font text-uppercase text-white">--}%
                                %{--Free <span class="regular">Delivery days!</span>--}%
                            %{--</h2>--}%
                        %{--</div><!-- end col -->--}%
                        %{--<div class="col-sm-4 vertical-align">--}%
                            %{--<p class="mt-20">Typi non habent claritatem insitam, est usus legentis in iis qui facit eorum claritatem.</p>--}%
                        %{--</div><!-- end col -->--}%
                        %{--<div class="col-sm-4 vertical-align text-right">--}%
                            %{--<a target="_blank" href="https://wrapbootstrap.com/theme/plus-responsive-e-commerce-template-WB0R2CN86" class="btn btn-light semi-circle btn-md">Purchase</a>--}%
                        %{--</div><!-- end col -->--}%
                    %{--</div><!-- end row -->--}%
                %{--</div><!-- end box-banner-wide -->--}%
            %{--</div><!-- end container -->--}%
        %{--</section>--}%
        <!-- end section -->

        <!-- start section -->
        <section>
            <div class="container">
                <!-- Modal Product Quick View -->
                <div class="modal fade productQuickView" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <h5>Lorem ipsum dolar sit amet</h5>
                            </div><!-- end modal-header -->
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-5">
                                        <div class='carousel slide product-slider' data-ride='carousel' data-interval="false">
                                            <div class='carousel-inner'>
                                                <div class='item active'>
                                                    <figure>
                                                        <img src='img/products/men_01.jpg' alt='' />
                                                    </figure>
                                                </div><!-- end item -->
                                                <div class='item'>
                                                    <div class="embed-responsive embed-responsive-16by9">
                                                        <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/NrmMk1Myrxc"></iframe>
                                                    </div>
                                                </div><!-- end item -->
                                                <div class='item'>
                                                    <figure>
                                                        <img src='img/products/men_03.jpg' alt='' />
                                                    </figure>
                                                </div><!-- end item -->
                                                <div class='item'>
                                                    <figure>
                                                        <img src='img/products/men_04.jpg' alt='' />
                                                    </figure>
                                                </div><!-- end item -->
                                                <div class='item'>
                                                    <figure>
                                                        <img src='img/products/men_05.jpg' alt=''/>
                                                    </figure>
                                                </div><!-- end item -->

                                            <!-- Arrows -->
                                                <a class='left carousel-control' href='.product-slider' data-slide='prev'>
                                                    <span class='fa fa-angle-left'></span>
                                                </a>
                                                <a class='right carousel-control' href='.product-slider' data-slide='next'>
                                                    <span class='fa fa-angle-right'></span>
                                                </a>
                                            </div><!-- end carousel-inner -->

                                        <!-- thumbs -->
                                            <ol class='carousel-indicators mCustomScrollbar meartlab'>
                                                <li data-target='.product-slider' data-slide-to='0' class='active'><img src='img/products/men_01.jpg' alt='' /></li>
                                                <li data-target='.product-slider' data-slide-to='1'><img src='img/products/men_02.jpg' alt='' /></li>
                                                <li data-target='.product-slider' data-slide-to='2'><img src='img/products/men_03.jpg' alt='' /></li>
                                                <li data-target='.product-slider' data-slide-to='3'><img src='img/products/men_04.jpg' alt='' /></li>
                                                <li data-target='.product-slider' data-slide-to='4'><img src='img/products/men_05.jpg' alt='' /></li>
                                                <li data-target='.product-slider' data-slide-to='5'><img src='img/products/men_06.jpg' alt='' /></li>
                                            </ol><!-- end carousel-indicators -->
                                        </div><!-- end carousel -->
                                    </div><!-- end col -->
                                    <div class="col-sm-7">
                                        <p class="text-gray alt-font">Product code: 1032446</p>

                                        <i class="fa fa-star text-warning"></i>
                                        <i class="fa fa-star text-warning"></i>
                                        <i class="fa fa-star text-warning"></i>
                                        <i class="fa fa-star text-warning"></i>
                                        <i class="fa fa-star-half-o text-warning"></i>
                                        <span>(12 reviews)</span>
                                        <h4 class="text-primary">$79.00</h4>
                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
                                        <hr class="spacer-10">
                                        <div class="row">
                                            <div class="col-md-4 col-sm-6 col-xs-12">
                                                <select class="form-control" name="select">
                                                    <option value="" selected>Color</option>
                                                    <option value="red">Red</option>
                                                    <option value="green">Green</option>
                                                    <option value="blue">Blue</option>
                                                </select>
                                            </div><!-- end col -->
                                            <div class="col-md-4 col-sm-6 col-xs-12">
                                                <select class="form-control" name="select">
                                                    <option value="">Size</option>
                                                    <option value="">S</option>
                                                    <option value="">M</option>
                                                    <option value="">L</option>
                                                    <option value="">XL</option>
                                                    <option value="">XXL</option>
                                                </select>
                                            </div><!-- end col -->
                                            <div class="col-md-4 col-sm-12">
                                                <select class="form-control" name="select">
                                                    <option value="" selected>QTY</option>
                                                    <option value="">1</option>
                                                    <option value="">2</option>
                                                    <option value="">3</option>
                                                    <option value="">4</option>
                                                    <option value="">5</option>
                                                    <option value="">6</option>
                                                    <option value="">7</option>
                                                </select>
                                            </div><!-- end col -->
                                        </div><!-- end row -->
                                        <hr class="spacer-10">
                                        <ul class="list list-inline">
                                            <li><button type="button" class="btn btn-default btn-md round"><i class="fa fa-shopping-basket mr-5"></i>Add to Cart</button></li>
                                            <li><button type="button" class="btn btn-gray btn-md round"><i class="fa fa-heart mr-5"></i>Add to Wishlist</button></li>
                                        </ul>
                                    </div><!-- end col -->
                                </div><!-- end row -->
                            </div><!-- end modal-body -->
                        </div><!-- end modal-content -->
                    </div><!-- end modal-dialog -->
                </div><!-- end productRewiew -->
            </div><!-- end container -->
        </section>
        <!-- end section -->

    </content>

</g:applyLayout>