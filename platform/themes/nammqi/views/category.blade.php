{{--@php Theme::set('section-name', $category->name) @endphp--}}
<section class="blog blog-two padding-120">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-sm-12 col-xs-12">
                <div class="blog-items">
                 @foreach ($posts as $post)
                    <div class="blog-item blog-item-classes">
                        <div class="blog-image">
                            <a href="single.html"><img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="blog image" class="img-responsive" style="width: 751px;height: 341px;"></a>
                        </div>
                        <div class="blog-content">
                            <h4><a href="single.html">{{ $post->name }}</a></h4>
                            <ul>
                                <li><a href="#"><span class="icon flaticon-calendar"></span>{{ $post->created_at->translatedFormat('M d, Y') }}</a></li>
                                <li><a href="#"><span class="icon flaticon-open-book-top-view"></span>{{ $post->views}}</a></li>
                            </ul>
                            <p>{{ $post->description }}</p>
                            <a href="single.html" class="button-default">{{ __('labels.readMore') }}</a>
                        </div>
                    </div>
                 @endforeach
{{--                        @foreach ($posts as $post)--}}
{{--                            <div class="blog-item blog-item-wide">--}}
{{--                                @if ($post->image)--}}
{{--                                <div class="blog-image">--}}
{{--                                    <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}" class="img-responsive" style="width: 300px;height: 300px"><a href="{{ $post->url }}" ></a>--}}
{{--                                    <a href="single.html"><img src="images/blog/blog_01.jpg" alt="blog image" class="img-responsive"></a>--}}
{{--                                </div>--}}
{{--                                @endif--}}
{{--                                <div class="blog-content">--}}
{{--                                    <h4><a href="{{ $post->url }}">{{ $post->name }}</a></h4>--}}
{{--                                    <p>{{ $post->description }}</p>--}}
{{--                                </div>--}}
{{--                                <ul>--}}
{{--                                    <li><a href="#"><span class="icon flaticon-calendar"></span>{{ $post->created_at->translatedFormat('M d, Y') }}</a></li>--}}
{{--                                    <li><a href="#"><span class="icon flaticon-open-book-top-view"></span>{{ $post->views}}</a></li>--}}
{{--                                    <li><a href="#"><span class="icon flaticon-chat"></span>24 Comment</a></li>--}}
{{--                                </ul>--}}
{{--                            </div><!-- blog item -->--}}

{{--                        @endforeach--}}

                </div>
                <div class="blog-button">
                    <ul class="pagination">
                        {!! $posts->links() !!}
{{--                        <li><a href="#"><i class="fa fa-angle-double-left" aria-hidden="true"></i></a></li>--}}
{{--                        <li><a href="#" class="active">1</a></li>--}}
{{--                        <li><a href="#">2</a></li>--}}
{{--                        <li><a href="#">3</a></li>--}}
{{--                        <li><a href="#"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a></li>--}}
{{--                        <li><a href="#">5</a></li>--}}
{{--                        <li><a href="#"><i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>--}}
                    </ul>
                </div>

            </div>
            <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="sidebar">
                    {!! Theme::partial('sidebar') !!}
                </div><!-- sidebar -->
            </div>
        </div><!-- row -->
    </div><!-- container -->
</section>

{{--@if ($posts->count() > 0)--}}
{{--    @foreach ($posts as $post)--}}
{{--        <article class="post post__horizontal mb-40 clearfix">--}}
{{--            <div class="post__thumbnail">--}}
{{--                <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}"><a href="{{ $post->url }}" class="post__overlay"></a>--}}
{{--            </div>--}}
{{--            <div class="post__content-wrap">--}}
{{--                <header class="post__header">--}}
{{--                    <h3 class="post__title"><a href="{{ $post->url }}">{{ $post->name }}</a></h3>--}}
{{--                    <div class="post__meta"><span class="post__created-at"><i class="ion-clock"></i>{{ $post->created_at->translatedFormat('M d, Y') }}</span>--}}
{{--                        @if ($post->author->username)--}}
{{--                            <span class="post__author"><i class="ion-android-person"></i><span>{{ $post->author->name }}</span></span>--}}
{{--                        @endif--}}
{{--                        <span class="post-category"><i class="ion-cube"></i><a href="{{ $category->url }}">{{ $category->name }}</a></span></div>--}}
{{--                </header>--}}
{{--                <div class="post__content">--}}
{{--                    <p data-number-line="4">{{ $post->description }}</p>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </article>--}}
{{--    @endforeach--}}
{{--    <div class="page-pagination text-right">--}}
{{--        {!! $posts->links() !!}--}}
{{--    </div>--}}
{{--@else--}}
{{--    <div class="alert alert-warning">--}}
{{--        <p>{{ __('There is no data to display!') }}</p>--}}
{{--    </div>--}}
{{--@endif--}}
