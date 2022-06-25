<div class="blog-items">
    @if ($posts->count() > 0)
        @foreach ($posts as $post)
    <div class="blog-item blog-item-wide">
        <div class="blog-image">
            <a href="{{ $post->url }}"><img src="{{ RvMedia::getImageUrl($post->image, 'small', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}" class="img-responsive"></a>
        </div>
        <div class="blog-content">
            <h4><a href="{{ $post->url }}">{{ $post->name }}</a></h4>
            <ul>
                <li><i class="fa fa-user" aria-hidden="true"></i> <a href="#">Robot Smith</a></li>
                <li><i class="fa fa-calendar" aria-hidden="true"></i> <a href="#">24 April 2017</a></li>
            </ul>
            <p>Aolaboravely enable virad nich and market Compelngly evsculat funcnal and share for Aolaboraved enable virad nich and market through forand goaloriented</p>
            <a href="single.html">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
        </div>
    </div><!-- blog item -->




{{--        <article class="post post__horizontal mb-40 clearfix"  style="display: none">--}}
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
{{--                        <span class="post-category"><i class="ion-cube"></i>--}}
{{--                            @foreach($post->categories as $category)--}}
{{--                                <a href="{{ $category->url }}">{{ $category->name }}</a>@if (!$loop->last),@endif--}}
{{--                            @endforeach--}}
{{--                        </span></div>--}}
{{--                </header>--}}
{{--                <div class="post__content" style="padding: 0">--}}
{{--                    <p data-number-line="4">{{ $post->description }}</p>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </article>--}}
    @endforeach
    <div class="page-pagination text-right">
        {!! $posts->withQueryString()->links() !!}
    </div>
@endif
</div>
<style>
    .section.pt-50.pb-100 {
        background-color: #ecf0f1;
    }
</style>
