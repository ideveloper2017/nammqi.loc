<div class="widgets-sidebar">
    <h3 class="h3-md fw-6 mb-4">Categories</h3>
    <ul class="blog-category list-unstyled">
        <li><a href="#">Photography</a></li>
        <li><a href="#">Web Design</a></li>
        <li><a href="#">Automation</a></li>
        <li><a href="#">Google Analytic</a></li>
        <li><a href="#">Online Marketing</a></li>
        <li><a href="#">Online Marketing</a></li>
    </ul>
</div>
<div class="sidebar-widget widget_categories mb-50" style="display: none">
    <div class="widget-header position-relative mb-20">
        <h5 class="widget-title mt-5">{{__('Categories')}}</h5>
    </div>
    <div class="post-block-list post-module-1 post-module-5">
        <ul>
            @foreach(get_popular_categories(5) as $category)
                <li class="cat-item">
                    <a href="{{ $category->url }}">{{ $category->name }}</a>
                    ({{ $category->posts_count }})
                </li>
            @endforeach
        </ul>
    </div>
</div>
