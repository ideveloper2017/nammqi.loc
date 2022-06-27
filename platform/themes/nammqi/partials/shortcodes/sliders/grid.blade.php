<div class="swiper-wrapper" style="transform: translate3d(-3810px, 0px, 0px); transition-duration: 0ms;">
    @foreach($sliders as $key=>$slider)
{{--        @if ($slider->link && !($shortcode->show_newsletter_form == 'yes' && is_plugin_active('newsletter')))--}}
{{--            <a href="{{ url($slider->link) }}">--}}
{{--                @endif--}}
{{--                <div class="banner-item slide-three swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next {{ $itemClass ?? ''}}"--}}
{{--                     style="background-image: url({{ RvMedia::getImageUrl($slider->image, null, false, RvMedia::getDefaultImage()) }}); @if (!$loop->first) display: block; @endif" data-swiper-slide-index="0" style="width: 1905px;">--}}
                    {!! Theme::partial('shortcodes.sliders.content', compact('slider', 'shortcode')) !!}
{{--                </div>--}}
{{--                @if ($slider->link && !($shortcode->show_newsletter_form == 'yes' && is_plugin_active('newsletter')))--}}
{{--            </a>--}}
{{--        @endif--}}
    @endforeach


    <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets">
        <span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span>
        <span class="swiper-pagination-bullet"></span>
    </div>
</div>
{{--<div class="hero-slider-1 dot-style-1 dot-style-1-position-1 {{ $class ?? ''}}" style="display: none">--}}
{{--    @foreach($sliders as $slider)--}}
{{--        @if ($slider->link && !($shortcode->show_newsletter_form == 'yes' && is_plugin_active('newsletter')))--}}
{{--            <a href="{{ url($slider->link) }}">--}}
{{--        @endif--}}

{{--        <div class="single-hero-slider single-animation-wrap {{ $itemClass ?? ''}}" style="background-image: url({{ RvMedia::getImageUrl($slider->image, null, false, RvMedia::getDefaultImage()) }}); @if (!$loop->first) display: none; @endif">--}}
{{--            {!! Theme::partial('shortcodes.sliders.content', compact('slider', 'shortcode')) !!}--}}
{{--        </div>--}}

{{--        @if ($slider->link && !($shortcode->show_newsletter_form == 'yes' && is_plugin_active('newsletter')))--}}
{{--            </a>--}}
{{--        @endif--}}
{{--    @endforeach--}}
{{--</div>--}}
{{--<div class="slider-arrow hero-slider-1-arrow" style="display: none"></div>--}}
