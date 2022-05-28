{!! Theme::partial('header') !!}
@if (Theme::get('section-name'))
    <section data-background="{{ Theme::get('breadcrumbBannerImage') ?: (theme_option('default_breadcrumb_banner_image') ? RvMedia::getImageUrl(theme_option('default_breadcrumb_banner_image')) : Theme::asset()->url('images/page-intro-02.jpg')) }}" class="page-header">
        <div style="opacity: 0.7" class="bg-overlay"></div>

        <div class="overlay">
            <div class="container">
            <h3>{{ Theme::get('section-name') }}</h3>
            {!! Theme::partial('breadcrumbs') !!}
            </div>
        </div>
    </section>
@endif
<section class="section pt-50 pb-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                <div class="page-content">
                    {!! Theme::content() !!}
                </div>
            </div>
            <div class="col-lg-3">
                <div class="page-sidebar">
                    {!! Theme::partial('sidebar') !!}
                </div>
            </div>
        </div>
    </div>
</section>
{!! Theme::partial('footer') !!}


