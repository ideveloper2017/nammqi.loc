<footer>

    {!! dynamic_sidebar('footer_sidebar_1') !!}
    <div class="footer-top" style="display: none">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="footer-item">
                        <div class="title"><a href="index.html"><img src="images/logo_02.png" alt="logo" class="img-responsive"></a></div>
                        <div class="footer-about">
                            <p>Distily enable team driven services through extensive is a relatonships platforms with interactive content. Enthusiastically scale effective.</p>

                            <ul>
                                <li><span><i class="fa fa-home" aria-hidden="true"></i></span> {{ theme_option('address') }}.</li>
                                <li><span><i class="fa fa-phone" aria-hidden="true"></i></span> +8801 923 970 212, 0125897</li>
                                <li><span><i class="fa fa-envelope-o" aria-hidden="true"></i></span> <a href="mailto:{{ theme_option('contact_email') }}">{{ theme_option('contact_email') }}</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div><!-- row -->
        </div><!-- container -->
    </div><!-- footer top -->
    <div class="footer-bottom">
        <div class="container">
            <div class="row">

            </div><!-- row -->
        </div><!-- container -->
    </div><!-- footer bottom -->
</footer>
<a class="page-scroll scroll-top" href="#scroll-top"><i class="fa fa-angle-up" aria-hidden="true"></i></a>
{{--<script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>--}}
        {!! Theme::footer() !!}

    </body>
</html>
