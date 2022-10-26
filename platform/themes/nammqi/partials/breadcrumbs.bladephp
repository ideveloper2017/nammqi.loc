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
