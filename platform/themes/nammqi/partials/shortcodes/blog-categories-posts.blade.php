<section class="blog section-bg padding-120">
    <div class="container">
        <div class="section-header">
            <h3>{!! clean($title) !!}</h3>
        </div>
        <div class="blog-items">
            <div class="row">
                @foreach($category->posts->take(12) as $post)
                    <div class="col-md-3 col-sm-4 col-xs-12">
                        <div class="blog-item">
                            <div class="blog-image">
                                <a href="{{ $post->url }}"><img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="blog image" class="img-responsive"></a>
                            </div>
                            <div class="blog-content">
                                <h5><a href="{{ $post->url }}">{{ $post->name }}</a></h5>
{{--                                <p>{{ mb_substr($post->description,0,125) }}</p>--}}
                            </div>
                            <ul>
                                <li><a href="#"><span class="icon flaticon-calendar"></span>{{ $post->created_at->translatedFormat('M d, Y') }}</a></li>
                            </ul>
                        </div><!-- blog item -->
                    </div>
                @endforeach
            </div><!-- row -->
        </div><!-- blog items -->
    </div><!-- container -->
</section>
