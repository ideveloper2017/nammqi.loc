<section class="blog section-bg padding-120">
    <div class="container">
        <div class="section-header">
            <h3>{!! clean($title) !!}</h3>
        </div>
        <div class="blog-items">
            <div class="row">
                @foreach (get_latest_posts(6, [], ['slugable']) as $post)
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="blog-item">
                            <div class="blog-image">
                                <a href="{{ $post->url }}"><img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="blog image" class="img-responsive"></a>
                            </div>
                            <div class="blog-content">
                                <h4><a href="{{ $post->url }}">{{ $post->name }}</a></h4>
                                <p>{{ mb_substr($post->description,0,125) }}</p>
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
<section class="section pt-50 pb-50" style="display: none">
    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                <div class="page-content">
                    <div class="post-group post-group--single">
                        <div class="post-group__header">
                            <h3 class="post-group__title">{!! clean($title) !!}</h3>
                        </div>
                        <div class="post-group__content">
                            <div class="row">
                                @foreach (get_latest_posts(7, [], ['slugable']) as $post)
                                    @if ($loop->first)
                                        <div class="col-md-6 col-sm-6 col-12">
                                            <article class="post post__vertical post__vertical--single">
                                                <div class="post__thumbnail">
                                                    <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}"><a href="{{ $post->url }}" class="post__overlay"></a>
                                                </div>
                                                <div class="post__content-wrap">
                                                    <header class="post__header">
                                                        <h3 class="post__title"><a href="{{ $post->url }}">{{ $post->name }}</a></h3>
                                                        <div class="post__meta"><span class="created__month">{{ $post->created_at->translatedFormat('M') }}</span><span class="created__date">{{ $post->created_at->translatedFormat('d') }}</span><span class="created__year">{{ $post->created_at->translatedFormat('Y') }}</span></div>
                                                    </header>
                                                    <div class="post__content">
                                                        <p data-number-line="4">{{ $post->description }}</p>
                                                    </div>
                                                    <div class="post__footer"><a href="{{ $post->url }}" class="post__readmore">{{ __('Read more') }}</a></div>
                                                </div>
                                            </article>
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-12">
                                            @else
                                                <article class="post post__horizontal post__horizontal--single mb-20 clearfix">
                                                    <div class="post__thumbnail">
                                                        <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}"><a href="{{ $post->url }}" class="post__overlay"></a>
                                                    </div>
                                                    <div class="post__content-wrap">
                                                        <header class="post__header">
                                                            <h3 class="post__title"><a href="{{ $post->url }}">{{ $post->name }}</a></h3>
                                                            <div class="post__meta"><span class="post__created-at">{{ $post->created_at->translatedFormat('M d, Y') }}</span></div>
                                                        </header>
                                                    </div>
                                                </article>
                                            @endif
                                            @if ($loop->last)
                                        </div>
                                    @endif
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="page-sidebar">
                    {!! dynamic_sidebar('top_sidebar') !!}
                </div>
            </div>
        </div>
    </div>
</section>

<div class="bg-grey pt-50 pb-50" style="display: none">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                @if (!empty($category))
                    <div class="post-module-2">
                        <div class="widget-header-1 position-relative mb-30  wow fadeInUp animated">
                            <h5 class="mt-5 mb-30">{{ $category->name }}</h5>
                        </div>
                        <div class="loop-list loop-list-style-1">
                            <div class="row">
                                @foreach($category->posts->sortByDesc('id')->take(4) as $post)
                                    <article class="col-md-6 mb-40 wow fadeInUp  animated">
                                        <div class="post-card-1 border-radius-10 hover-up">
                                            {!! Theme::partial('components.post-card', compact('post')) !!}
                                        </div>
                                    </article>
                                @endforeach
                            </div>
                        </div>
                    </div>
                @endif
                <div class="post-module-3">
                    <div class="widget-header-1 position-relative mb-30">
                        <h5 class="mt-5 mb-30">{{ __('Latest posts') }}</h5>
                    </div>
                    <div class="loop-list loop-list-style-1">
                        @foreach(get_latest_posts(3, !empty($category) ? $category->posts->sortByDesc('id')->take(4)->pluck('id')->all() : [], ['slugable', 'categories', 'categories.slugable']) as $post)
                            <article class="hover-up-2 transition-normal wow fadeInUp animated">
                                {!! Theme::partial('components.post-list-item', compact('post')) !!}
                            </article>
                        @endforeach
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="widget-area">
                    {!! AdsManager::display('top-sidebar-ads', ['class' => 'mb-30']) !!}
                    {!! dynamic_sidebar('primary_sidebar') !!}
                    {!! AdsManager::display('bottom-sidebar-ads', ['class' => 'mt-30 mb-30']) !!}
                </div>
            </div>
        </div>
    </div>
</div>
