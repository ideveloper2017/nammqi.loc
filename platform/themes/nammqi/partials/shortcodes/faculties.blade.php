<section class="services padding-120">
    <div class="container">
        <div class="row">
            @foreach($categories as $category)
            <div class="col-md-{{ 12 / count($categories) }} col-sm-{{ 12 / count($categories) }} col-xs-{{ 12 / count($categories) }}">
                <div class="service-item">
                    <span class="icon flaticon-flasks"></span>
                    <h4>Science &amp; Technology</h4>
                    <p>Aolaboraively eenable vira niche market Uniquely maintain hghly eficient prduct for and goaloriented human.</p>
                    <a href="services.html">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                </div>
            </div>
            @endforeach
        </div><!-- row -->
    </div><!-- container -->
</section>
