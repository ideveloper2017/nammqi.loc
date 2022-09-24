<section class="event section-bg padding-120">
    <div class="container">
        <div class="section-header">
            <h3>{!! clean($title) !!}</h3>
        </div>
        <div class="row">
            <?php dd($categories)?>
            <div class="event-items">
            @foreach($categories as $category)
                @foreach($category->posts as $post)
                        <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="event-item">
                            <div class="event-image">
                                <a href="{{ $post->url }}">
                                    <img src="{{ RvMedia::getImageUrl($post->image, 'small', false, RvMedia::getDefaultImage()) }}" class="img-responsive"/>
                                    <h4>{{ $post->name }}</h4>
                                </a>
                                <div class="date">
                                    <span>24</span>
                                    <p>March</p>
                                </div>
                            </div>
                        </div>
                            <div class="event-content">
                                <h4>Study Fastivel Event 2018</h4>
                                <ul>
                                    <li><span><i class="fa fa-clock-o" aria-hidden="true"></i></span>08:00 am - 10:00 am</li>
                                    <li><span><i class="fa fa-home" aria-hidden="true"></i></span>218 New Elephant Road Dhaka</li>
                                </ul>
                                <p>Dratcaly novate fuly rarched an plication awesome theme education that plication creative theme education.</p>
                                <a href="event.html" class="button-default">Join Now</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            @endforeach
            </div>
        </div><!-- row -->
    </div><!-- container -->
</section>
