<section class="subscribe">
    <div class="container">
        <div class="row">
            <div class="col-md-5 col-sm-12 col-xs-12">
                <h3>Join Our Newsletter</h3>
            </div>
            <div class="col-md-7 col-sm-12 col-xs-12">
                <p class="font-medium">{{ __('Subscribe to our newsletter and get our newest updates right on your inbox.') }}</p>
                <form action="{{ route('public.newsletter.subscribe') }}" method="post">
                    @csrf
                    @if (setting('enable_captcha') && is_plugin_active('captcha'))
                        <div class="form-group">
                            {!! Captcha::display() !!}
                        </div>
                    @endif
                    <input type="text"  placeholder="{{ __('Enter your email') }}">
                    <input type="submit" value="Subscribe Now">
                </form>
            </div>
        </div><!-- row -->
    </div><!-- container -->
</section>
<footer>
    <div class="footer-top" >
        <div class="container">
            <div class="row">
                {!! dynamic_sidebar('footer_sidebar_1') !!}
                <div class="col-md-3 col-sm-6 col-xs-12" style="display: none">
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
