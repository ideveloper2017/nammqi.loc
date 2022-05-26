<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5, user-scalable=1" name="viewport"/>
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <!-- Fonts-->
        <link href="https://fonts.googleapis.com/css?family={{ urlencode(theme_option('primary_font', 'Lora')) }}" rel="stylesheet" type="text/css">
        <!-- CSS Library-->
        <style>
            :root {
                --primary-color: {{ theme_option('primary_color', '#ff2b4a') }};
                --primary-font: '{{ theme_option('primary_font', 'Roboto') }}', sans-serif;
            }
        </style>
        {!! Theme::header() !!}
        <!--HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
        <!--WARNING: Respond.js doesn't work if you view the page via file://-->
        <!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->

    </head>
    <!--[if IE 7]><body class="ie7 lt-ie8 lt-ie9 lt-ie10"><![endif]-->
    <!--[if IE 8]><body class="ie8 lt-ie9 lt-ie10"><![endif]-->
    <!--[if IE 9]><body class="ie9 lt-ie10"><![endif]-->
    <body id="scroll-top">
        {!! apply_filters(THEME_FRONT_BODY, null) !!}
        <header class="header-two">
            <div class="header-top">
                <div class="container">
                    <ul class="left">
                        <li><span><i class="fa fa-phone" aria-hidden="true"></i></span> Phone : 8801 923 154 259</li>
                        <li><span><i class="fa fa-clock-o" aria-hidden="true"></i></span> Opening Time : 9:30am-5:30pm</li>
                        <li><span><i class="fa fa-home" aria-hidden="true"></i></span> Address : Labartisan 1205 Dhaka</li>
                    </ul>
                    <ul class="right">
                        <li><i class="fa fa-registered" aria-hidden="true"></i> <a href="#">Register</a></li>
                        <li>|</li>
                        <li><i class="fa fa-lock" aria-hidden="true"></i> <a href="#">Login</a></li>
                    </ul>
                </div><!-- container -->
            </div><!-- header top -->
            <div class="header-middle">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-4 col-xs-4">
                            <form>
                                <input type="search" name="search" placeholder="Search...">
                                <button><i class="fa fa-search" aria-hidden="true"></i></button>
                            </form>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-4">
                            <a href="index.html" class="fm-logo"><img src="images/logo.png" alt="logo image" class="img-responsive"></a>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-4">
                            <div class="menu_cart"><p>$1000.00</p> <span><i class="fa fa-shopping-bag" aria-hidden="true"></i></span>
                                <ul class="shop_feature">
                                    <li class="feature_item">
                                        <div class="featured_image">
                                            <img src="images/product/menu_cart_01.jpg" alt="Fratured image" class="img-responsive"/>
                                        </div><!--featured image-->
                                        <div class="featured_content">
                                            <h3><a href="#">Product Title</a> </h3>
                                            <span class="remove"><i class="fa fa-times" aria-hidden="true"></i></span>
                                            <p>quantity: 1</p>
                                            <span>$85</span>
                                        </div><!--featured content-->
                                    </li><!--  feature item -->
                                    <li class="feature_item">
                                        <div class="featured_image">
                                            <img src="images/product/menu_cart_02.jpg" alt="Fratured image" class="img-responsive"/>
                                        </div><!--featured image-->
                                        <div class="featured_content">
                                            <h3><a href="#">Product Title</a> </h3>
                                            <span class="remove"><i class="fa fa-times" aria-hidden="true"></i></span>
                                            <p>quantity: 2</p>
                                            <span>$85</span>
                                        </div><!--featured content-->
                                    </li><!--  feature item -->
                                    <li class="feature_item">
                                        <div class="featured_image">
                                            <img src="images/product/menu_cart_03.jpg" alt="Fratured image" class="img-responsive"/>
                                        </div><!--featured image-->
                                        <div class="featured_content">
                                            <h3><a href="#">Product Title</a> </h3>
                                            <span class="remove"><i class="fa fa-times" aria-hidden="true"></i></span>
                                            <p>quantity: 4</p>
                                            <span>$85</span>
                                        </div><!--featured content-->
                                    </li><!--  feature item -->
                                    <li class="cart_total">total order: <span>$591.00</span></li>
                                    <li><a href="shop-cart.html" class="button-default check_out">Check Out</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div><!-- container -->
            </div>
            <div class="main-menu">
                <nav class="navbar ">
                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="index.html"><img src="images/logo_02.png" alt="logo" class="img-responsive"></a>
                        </div>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            {!!
                             Menu::renderMenuLocation('main-menu', [
                                 'options' => ['class' => 'nav navbar-nav'],
                                 'view'    => 'main-menu',
                             ])
                         !!}

                            <ul class="nav navbar-nav" style="display: none">
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Home <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="index.html">Home Style 01</a></li>
                                        <li class="active"><a href="index-2.html">Home Style 02</a></li>
                                        <li><a href="index-3.html">Home Style 03</a></li>
                                        <li><a href="index-4.html">Home Style 04</a></li>
                                        <li><a href="index-5.html">Home Style 05</a></li>
                                        <li><a href="index-6.html">Home Style 06</a></li>
                                        <li><a href="index-7.html">Home Style 07</a></li>
                                        <li><a href="index-8.html">Home Style 08</a></li>
                                        <li><a href="index-9.html">Home Style 09</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Courses <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="courses.html">Courses Grid Style</a></li>
                                        <li><a href="courses-2.html">Courses 2 Column</a></li>
                                        <li><a href="courses-3.html">Courses List Style</a></li>
                                        <li><a href="course-single.html">Course Single</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="about.html">About</a></li>
                                        <li><a href="services.html">Services</a></li>
                                        <li><a href="teacher.html">Teacher Style One</a></li>
                                        <li><a href="teacher-2.html">Teacher Style Two</a></li>
                                        <li><a href="teacher-details.html">Teacher Single</a></li>
                                        <li><a href="404.html">404 Error</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Events <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="event.html">Events Grid Style</a></li>
                                        <li><a href="event-2.html">Events 2 Column</a></li>
                                        <li><a href="event-3.html">Events List Style</a></li>
                                        <li><a href="event-single.html">Event Single</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Gallery <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="gallery.html">Gallery Style One</a></li>
                                        <li><a href="gallery-2.html">Gallery Style Two</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="blog.html">Blog Grid Style</a></li>
                                        <li><a href="blog-2.html">Blog 2 Column</a></li>
                                        <li><a href="blog-3.html">Blog List Style</a></li>
                                        <li><a href="blog-4.html">Blog Classes Style</a></li>
                                        <li><a href="single.html">Blog Single</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Shop <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="product.html">Product Page</a></li>
                                        <li><a href="product-details.html">Product Details</a></li>
                                        <li><a href="shop-cart.html">Shop Cart</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact.html">Contact</a></li>


                            </ul>
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.container -->
                </nav>
            </div><!-- main menu -->
        </header>
        <header data-sticky="false" data-sticky-checkpoint="200" data-responsive="991" class="page-header page-header--light" style="display: none">
            <div class="container">
                <!-- LOGO-->
                <div class="page-header__left">
                    <a href="{{ route('public.single') }}" class="page-logo">
                        @if (theme_option('logo'))
                            <img src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" alt="{{ theme_option('site_title') }}" height="50">
                        @endif
                    </a>
                </div>
                <div class="page-header__right">
                    <!-- MOBILE MENU-->
                    <div class="navigation-toggle navigation-toggle--dark" style="display: none"><span></span></div>
                    <div class="pull-left">
                        <!-- SEARCH-->
                        <div class="search-btn c-search-toggler"><i class="fa fa-search close-search"></i></div>
                        <!-- NAVIGATION-->
                        <nav class="navigation navigation--light navigation--fade navigation--fadeLeft">
                            {!!
                                Menu::renderMenuLocation('main-menu', [
                                    'options' => ['class' => 'menu sub-menu--slideLeft'],
                                    'view'    => 'main-menu',
                                ])
                            !!}
                        </nav>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
            @if (is_plugin_active('blog'))
                <div class="super-search hide" data-search-url="">
                    <form class="quick-search" action="">
                        <input type="text" name="q" placeholder="{{ __('Type to search...') }}" class="form-control search-input" autocomplete="off">
                        <span class="close-search">&times;</span>
                    </form>
                    <div class="search-result"></div>
                </div>
            @endif
        </header>
