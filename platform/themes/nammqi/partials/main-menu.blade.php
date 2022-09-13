<ul {!! clean($options) !!}>
    @foreach ($menu_nodes as $key => $row)
        <li @if ($row->has_child) class="dropdown {{ $row->css_class }} @if ($row->url == Request::url()) active current @endif" @endif>
            <a  @if ($row->has_child) href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" @else href="{{ $row->url }}" target="{{ $row->target }}" @endif >
                @if ($row->icon_font)<i class='{{ trim($row->icon_font) }}'></i> @endif @if ($row->title){{ $row->title }} @endif
                @if ($row->has_child)

                        @if ($row->parent_id) <i class="icofont-rounded-right"></i> @else <span class="caret"></span> @endif
                    @endif
            </a>
            @if ($row->has_child)
                {!!
                    Menu::generateMenu([
                        'menu'       => $menu,
                        'menu_nodes' => $row->child,
                        'view'       => 'main-menu',
                        'options'    => ['class' => 'dropdown-menu'],
                    ])
                !!}
            @endif
        </li>
    @endforeach
</ul>

{{--<ul {!! clean($options) !!}>--}}
{{--    @foreach ($menu_nodes as $key => $row)--}}
{{--        <li class="{!! (!$row->parent_id)?"nav-item":""!!} @if ($row->has_child) dropdown @endif {{ $row->css_class }} @if ($row->url == Request::url()) active current @endif" >--}}
{{--            <a class="{!! (!$row->parent_id)?"nav-link":"dropdown-item"!!} @if ($row->has_child) dropdown-toggle-mob @endif" href="{{ $row->url }}" target="{{ $row->target }}">--}}
{{--                @if ($row->icon_font)<i class='{{ trim($row->icon_font) }}'></i> @endif{{ $row->title }}--}}
{{--                @if ($row->has_child)--}}
{{--                    @if ($row->parent_id) <i class="icofont-rounded-right"></i> @else <i class="icofont-rounded-down"></i> @endif--}}
{{--                @endif--}}
{{--            </a>--}}
{{--            @if ($row->has_child)--}}
{{--                {!!--}}
{{--                    Menu::generateMenu([--}}
{{--                        'menu'       => $menu,--}}
{{--                        'menu_nodes' => $row->child,--}}
{{--                        'view'       => 'main-menu',--}}
{{--                        'options'    => ['class' => $row->parent_id ? 'dropdown-menu' : 'dropdown-menu'],--}}
{{--                    ])--}}
{{--                !!}--}}
{{--            @endif--}}
{{--        </li>--}}
{{--    @endforeach--}}
{{--</ul>--}}
