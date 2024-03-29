<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5, user-scalable=1" name="viewport"/>
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <!-- Fonts-->
        <link href="https://fonts.googleapis.com/css?family={{ urlencode(theme_option('primary_font', 'Open Sans')) }}" rel="stylesheet" type="text/css">
        <!-- CSS Library-->
        <style>
            :root {
                --color-1st: {{ theme_option('primary_color', '#bead8e') }};
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
{{--        <table class="loader">--}}
{{--            <tr>--}}
{{--                <td>--}}
{{--                    <div class="spinner">--}}
{{--                        <div class="rect1"></div>--}}
{{--                        <div class="rect2"></div>--}}
{{--                        <div class="rect3"></div>--}}
{{--                        <div class="rect4"></div>--}}
{{--                        <div class="rect5"></div>--}}
{{--                        <div class="rect6"></div>--}}
{{--                    </div>--}}
{{--                </td>--}}
{{--            </tr>--}}
{{--        </table>--}}
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

                    <ul class="right">
                                {!! apply_filters('language_switcher') !!}
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
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.container -->
                </nav>
            </div><!-- main menu -->
        </header>

