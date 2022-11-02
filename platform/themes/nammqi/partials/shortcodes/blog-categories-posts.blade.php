<div class="blog padding-120">
    <div class="container">
        <div class="blog-items">
        <div class="row">
            <div class="col-md-4 col-sm-6 col-xs-12">
                @if (!empty($category))
                    <div class="post-module-2">
                        <div class="widget-header-1 position-relative mb-30  wow fadeInUp animated">
                            <h5 class="mt-5 mb-30">{{ $category->name }}</h5>
                        </div>
                        <div class="loop-list loop-list-style-1">
                            <div class="row">
                                @foreach($category->posts->take(12) as $post)
                                    {!! Theme::partial('components.post-card', compact('post')) !!}

                                @endforeach
                            </div>
                        </div>
                    </div>
                @endif
                <div class="post-module-3" style="display: none">
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
    </div>
            <div class="col-lg-4" style="display: none">
                <div class="widget-area">
                    {!! AdsManager::display('top-sidebar-ads', ['class' => 'mb-30']) !!}
                    {!! dynamic_sidebar('primary_sidebar') !!}
                    {!! AdsManager::display('bottom-sidebar-ads', ['class' => 'mt-30 mb-30']) !!}
                </div>
            </div>
        </div>
    </div>
</div>
