
<section class="page-header">
    <div class="overlay">
        <div class="container">
            <h3>{{ Theme::get('section-name') }}</h3>
            <ul>
                @foreach (Theme::breadcrumb()->getCrumbs() as $i => $crumb)
                    <li>
                        @if ($i != (count(Theme::breadcrumb()->getCrumbs()) - 1))
                            <a href="{{ $crumb['url'] }}">{!! $crumb['label'] !!}</a>
                        @else
                            {!! $crumb['label'] !!}
                        @endif
                    </li>
                @endforeach
            </ul>

            <ul>
                <li><a href="index.html">Home</a></li>
                <li> - </li>
                <li>Contact us</li>
            </ul>
        </div>
    </div><!-- overlay -->
</section>
