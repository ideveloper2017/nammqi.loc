<section class="event section-bg padding-120">
    <div class="container">
        <div class="section-header">
            <h3>{!! clean($title) !!}</h3>
        </div>
        <div class="event-items">
            <div class="row">
                @foreach($categories->posts->take(12) as $post)
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="event-item">

                            <div class="event-image">
                                <img src="{!! Theme::asset()->url('images/adsphoto.jpeg') !!}" alt="event image" class="img-responsive">
                                <div class="date">
                                    <span>24</span>
                                    <p>March</p>
                                </div>
                            </div>
                            <div class="event-content">
                                <h4>{{ str_pad($post->name) }}</h4>
                                <ul>
                                    <li><span><i class="fa fa-clock-o" aria-hidden="true"></i></span>{{ $post->created_at->translatedFormat('M d, Y') }}</li>
                                </ul>
                                <p>{{ mb_substr($post->description,0,125) }}</p>
                            </div>
                        </div>
                    </div>
{{--                    <div class="col-md-3 col-sm-3 col-xs-12">--}}
{{--                        <div class="blog-item">--}}
{{--                            <div class="blog-image">--}}
{{--                                <a href="{{ $post->url }}"><img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="blog image" class="img-responsive"></a>--}}
{{--                            </div>--}}
{{--                            <div class="blog-content">--}}
{{--                                <h5><a href="{{ $post->url }}">{{ str_pad($post->name,20,"...",STR_PAD_RIGHT) }}</a></h5>--}}
{{--                                --}}{{--                                <p>{{ mb_substr($post->description,0,125) }}</p>--}}
{{--                            </div>--}}
{{--                            <ul>--}}
{{--                                <li><a href="#"><span class="icon flaticon-calendar"></span>{{ $post->created_at->translatedFormat('M d, Y') }}</a></li>--}}
{{--                            </ul>--}}
{{--                        </div>--}}
{{--                    </div>--}}
                @endforeach



            </div><!-- row -->
        </div><!-- event items -->
    </div><!-- container -->
</section>
