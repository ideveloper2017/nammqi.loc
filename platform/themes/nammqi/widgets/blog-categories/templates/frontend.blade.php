@if (is_plugin_active('blog'))
    <div class="sidebar-item">
         <h5 class="sidebar-title">{{ $config['name'] }}</h5>
        <div class="post-block-list post-module-1 post-module-5">
            <ul class="sidebar-categories">
                @foreach(app(\Botble\Blog\Repositories\Interfaces\CategoryInterface::class)->advancedGet(['condition' => ['status' => \Botble\Base\Enums\BaseStatusEnum::PUBLISHED], 'take' => $config['number_display'], 'with' => ['slugable'], 'withCount' => ['posts']]) as $category)
                <li class="cat-item cat-item-2">
                    <a href="{{ $category->url }}">{{ $category->name }}  ({{ $category->posts_count }})</a>
                @endforeach
            </ul>
        </div>
    </div>
@endif
