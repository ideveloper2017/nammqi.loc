<?php

use Botble\Theme\Theme;

return [

    /*
    |--------------------------------------------------------------------------
    | Inherit from another theme
    |--------------------------------------------------------------------------
    |
    | Set up inherit from another if the file is not exists,
    | this is work with "layouts", "partials" and "views"
    |
    | [Notice] assets cannot inherit.
    |
    */

    'inherit' => null, //default

    /*
    |--------------------------------------------------------------------------
    | Listener from events
    |--------------------------------------------------------------------------
    |
    | You can hook a theme when event fired on activities
    | this is cool feature to set up a title, meta, default styles and scripts.
    |
    | [Notice] these events can be overridden by package config.
    |
    */

    'events' => [

        // Before event inherit from package config and the theme that call before,
        // you can use this event to set meta, breadcrumb template or anything
        // you want inheriting.
        'before' => function($theme)
        {
            // You can remove this line anytime.
        },

        // Listen on event before render a theme,
        // this event should call to assign some assets,
        // breadcrumb template.
        'beforeRenderTheme' => function (Theme $theme)
        {
            $themeInfo = json_decode(file_get_contents(dirname(__FILE__) . '/theme.json'), true);
            $version = $themeInfo['version'];
            // Partial composer.
            // $theme->partialComposer('header', function($view) {
            //     $view->with('auth', \Auth::user());
            // });

            // You may use this event to set up your assets.
            $theme->asset()->usePath()->add('style', 'css/style.css', [], [], $version);

            if (BaseHelper::siteLanguageDirection() == 'rtl') {
                $theme->asset()->usePath()->add('rtl', 'css/rtl.css', [], [], $version);
            }


            $theme->asset()->container('footer')->add('jquery', '//cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js');

            $theme->asset()->container('footer')->usePath()->add('script', 'js/script.js');


            $theme->asset()->usePath()->add('bootstrap-css', 'assets/css/bootstrap.min.css');
            $theme->asset()->usePath()->add('font-awesome', 'assets/css/font-awesome.min.css');
            $theme->asset()->usePath()->add('flaticon', 'assets/flaticon/flaticon.css');
            $theme->asset()->usePath()->add('lightcase', 'assets/flaticon/lightcase.css');
            $theme->asset()->usePath()->add('swiper-css', 'assets/css/swiper.min.css');
            $theme->asset()->usePath()->add('swiper-view', 'assets/css/quick-view.css');
            $theme->asset()->usePath()->add('jquery-nstSlider', 'assets/css/jquery.nstSlider.css');
            $theme->asset()->usePath()->add('flexslider', 'assets/css/flexslider.css');
            $theme->asset()->usePath()->add('style', 'assets/css/style.css', [], [], $version);
            $theme->asset()->usePath()->add('responsive', 'assets/css/responsive.css');

            if (function_exists('shortcode')) {
                $theme->composer(['page', 'post'], function (\Botble\Shortcode\View\View $view) {
                    $view->withShortcodes();
                });
            }
        },

        // Listen on event before render a layout,
        // this should call to assign style, script for a layout.
        'beforeRenderLayout' => [

            'default' => function ($theme)
            {
                // $theme->asset()->usePath()->add('ipad', 'css/layouts/ipad.css');
            }
        ]
    ]
];
