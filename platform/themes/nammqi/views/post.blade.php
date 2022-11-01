@php
    Theme::set('section-name', $post->name);
    $post->loadMissing('metadata');

    $bannerImage = $post->getMetaData('banner_image', true);

    if ($bannerImage) {
        Theme::set('breadcrumbBannerImage', RvMedia::getImageUrl($bannerImage));
    }
@endphp

<div class="single-post">
    <div class="post-image">
        <img src="{{ RvMedia::getImageUrl($post->image, 'large', false, RvMedia::getDefaultImage()) }}"  alt="post image" class="img-responsive">
    </div>
    <div class="post-content">
        <h3>{{ $post->name }}</h3>
        <ul class="post-meta">
            <li><span class="icon flaticon-calendar"></span>{{ $post->published_at->translatedFormat('M d, Y') }}</li>
            @if (!$post->categories->isEmpty())
                <li><span class="icon flaticon-student"></span><a href="{{ $post->firstCategory->url }}">{{ $post->firstCategory->name }}</a></li>
            @endif
            @if ($post->author->username)
                <li><span class="icon flaticon-people"></span>{{ $post->author->name }}</li>
            @endif
            <li><span class="icon flaticon-open-book-top-view"></span> <a href="#">{{ $post->views }}</a></li>
        </ul>


        {!! clean($post->content) !!}
        @if (defined('GALLERY_MODULE_SCREEN_NAME') && !empty($galleries = gallery_meta_data($post)))
            {!! render_object_gallery($galleries, ($post->first_category ? $post->first_category->name : __('Uncategorized'))) !!}
        @endif
        <div class="fb-like" data-href="{{ Request::url() }}" data-layout="standard" data-action="like" data-show-faces="false" data-share="true"></div>
        <div class="content-bottom">
            @if (!$post->tags->isEmpty())
                @php
                    if (is_plugin_active('language-advanced')) {
                        $post->tags->loadMissing('translations');
                    }
                @endphp
                <ul class="post-tags">
                    <li><span class="flaticon-tags-outline"></span> Tags :</li>
                    @foreach ($post->tags as $tag)
                        <li> <a href="{{ $tag->url }}">{{ $tag->name }}</a> , </li>
                    @endforeach
                </ul>
            @endif
            <ul class="post-share">
                <li><span class="flaticon-share"></span> Share :</li>
                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
            </ul>
        </div><!-- content-bottom -->
    </div>


</div>
<div class="single-post" style="display: none">
    <div class="post__header">
        <h3 class="post__title">{{ $post->name }}</h3>
        <div class="post__meta">
            @if (!$post->categories->isEmpty())
                <span class="post-category"><i class="ion-cube"></i>
                    <a href="{{ $post->firstCategory->url }}">{{ $post->firstCategory->name }}</a>
                </span>
            @endif
            <span class="post__created-at"><i class="ion-clock"></i>{{ $post->created_at->translatedFormat('M d, Y') }}</span>
            @if ($post->author->username)
                <span class="post__author"><i class="ion-android-person"></i><span>{{ $post->author->name }}</span></span>
            @endif

            @if (!$post->tags->isEmpty())
                @php
                    if (is_plugin_active('language-advanced')) {
                        $post->tags->loadMissing('translations');
                    }
                @endphp
                <span class="post__tags"><i class="ion-pricetags"></i>
                    @foreach ($post->tags as $tag)
                        <a href="{{ $tag->url }}">{{ $tag->name }}</a>
                    @endforeach
                </span>
            @endif
        </div>
    </div>
    <div class="post__content">
        @if (defined('GALLERY_MODULE_SCREEN_NAME') && !empty($galleries = gallery_meta_data($post)))
            {!! render_object_gallery($galleries, ($post->first_category ? $post->first_category->name : __('Uncategorized'))) !!}
        @endif
        {!! clean($post->content) !!}
        <div class="fb-like" data-href="{{ Request::url() }}" data-layout="standard" data-action="like" data-show-faces="false" data-share="true"></div>
    </div>
    @php $relatedPosts = get_related_posts($post->id, 2); @endphp

    @if ($relatedPosts->count())
        <footer class="post__footer">
            <div class="row">
                @foreach ($relatedPosts as $relatedItem)
                    <div class="col-md-6 col-sm-6 col-12">
                        <div class="post__relate-group @if ($loop->last) post__relate-group--right @endif">
                            <h4 class="relate__title">@if ($loop->first) {{ __('Previous Post') }} @else {{ __('Next Post') }} @endif</h4>
                            <article class="post post--related">
                                <div class="post__thumbnail"><a href="{{ $relatedItem->url }}" class="post__overlay"></a>
                                    <img src="{{ RvMedia::getImageUrl($relatedItem->image, 'thumb', false, RvMedia::getDefaultImage()) }}" alt="{{ $relatedItem->name }}">
                                </div>
                                <header class="post__header">
                                    <p><a href="{{ $relatedItem->url }}" class="post__title"> {{ $relatedItem->name }}</a></p>
                                    <div class="post__meta"><span class="post__created-at">{{ $post->created_at->translatedFormat('M d, Y') }}</span></div>
                                </header>
                            </article>
                        </div>
                    </div>
                @endforeach
            </div>
        </footer>
    @endif
    <br>
    {!! apply_filters(BASE_FILTER_PUBLIC_COMMENT_AREA, theme_option('facebook_comment_enabled_in_post', 'yes') == 'yes' ? Theme::partial('comments') : null) !!}
</div>
