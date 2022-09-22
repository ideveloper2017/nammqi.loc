<section class="services padding-120">
    <div class="container">
        <div class="row">
            @foreach($categories as $category)
                @foreach($category->posts as $post)
            <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="service-item">
                    <div class="testimonial-image">
                    <a href="{{ $post->url }}">
                        <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" class="img-responsive"/>
                        <h4>{{ $post->name }}</h4>
                    </a>
                </div>
                </div>
            </div>
                @endforeach
            @endforeach
        </div><!-- row -->
    </div><!-- container -->
</section>
