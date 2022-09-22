<section class="services padding-120">
    <div class="container">
        <div class="row">
            @foreach($categories as $category)
                @foreach($category->posts as $post)
            <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="service-item">
                    <img src="{{ RvMedia::getImageUrl($post->image, 'featured', false, RvMedia::getDefaultImage()) }}" class="img-responsive"/>
                    <h4>{{ $post->name }}</h4>
                    <a href="{{ $post->url }}">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                </div>
            </div>
                @endforeach
            @endforeach
        </div><!-- row -->
    </div><!-- container -->
</section>
