<section class="services padding-120">
    <div class="container">
        <div class="row">
            @foreach($categories as $category)
                @foreach($category->posts as $post)
            <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="service-item">
                    <span class="icon flaticon-flasks"></span>
                    <h4>{{ $post->name }}</h4>
                    <p>Aolaboraively eenable vira niche market Uniquely maintain hghly eficient prduct for and goaloriented human.</p>
                    <a href="services.html">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                </div>
            </div>
                @endforeach
            @endforeach
        </div><!-- row -->
    </div><!-- container -->
</section>
