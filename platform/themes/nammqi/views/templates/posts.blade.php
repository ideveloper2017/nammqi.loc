
<section class="blog padding-120">
    <div class="container">
        <div class="row">
            @if ($posts->count() > 0)
                @foreach ($posts as $post)
            <div class="col-md-8 col-sm-12 col-xs-12">
                <div class="blog-items">
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="blog-item">
                                <div class="blog-image">
                                    <a href="single.html"><img src="{{ RvMedia::getImageUrl($post->image, 'small', false, RvMedia::getDefaultImage()) }}" alt="blog image" class="img-responsive"></a>
                                </div>
                                <div class="blog-content">
                                    <h4><a href="{{ $post->url }}">{{ $post->name }}</a></h4>
                                    <p>{{ $post->description }}</p>
                                </div>
                                <ul>
                                    <li><a href="#"><span class="icon flaticon-calendar"></span>22.04.2017</a></li>
                                    <li><a href="#"><span class="icon flaticon-like"></span>24 Like</a></li>
                                    <li><a href="#"><span class="icon flaticon-chat"></span>24 Comment</a></li>
                                </ul>
                            </div><!-- blog item -->
                        </div>
                    </div><!-- row -->
                </div><!-- blog items -->
                <div class="blog-button">
                    <ul class="pagination">
                        <li><a href="#"><i class="fa fa-angle-double-left" aria-hidden="true"></i></a></li>
                        <li><a href="#" class="active">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                    </ul>
                </div>

            </div>
                @endforeach
             @endif
        </div><!-- row -->
    </div><!-- container -->
</section>
{{--<div class="blog-items">--}}
{{--    @if ($posts->count() > 0)--}}
{{--        @foreach ($posts as $post)--}}
{{--<div class="blog-item blog-item-wide">--}}
{{--        <div class="blog-image">--}}
{{--            <a href="{{ $post->url }}"><img src="{{ RvMedia::getImageUrl($post->image, 'small', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}" class="img-responsive"></a>--}}
{{--        </div>--}}
{{--        <div class="blog-content">--}}
{{--            <h4><a href="{{ $post->url }}">{{ $post->name }}</a></h4>--}}
{{--            <ul>--}}
{{--                <li><i class="fa fa-user" aria-hidden="true"></i> <a href="#">Robot Smith</a></li>--}}
{{--                <li><i class="fa fa-calendar" aria-hidden="true"></i> <a href="#">24 April 2017</a></li>--}}
{{--            </ul>--}}
{{--            <p>{{ $post->description }}</p>--}}
{{--         <a href="single.html">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>--}}
{{--        </div>--}}
{{--</div>--}}
{{--    @endforeach--}}
{{--    <div class="page-pagination text-right">--}}
{{--        {!! $posts->withQueryString()->links() !!}--}}
{{--    </div>--}}
{{--@endif--}}
{{--</div>--}}
{{--<style>--}}
{{--    .section.pt-50.pb-100 {--}}
{{--        background-color: #ecf0f1;--}}
{{--    }--}}
{{--</style>--}}
