<?php

// Custom routes
// You can delete this route group if you don't need to add your custom routes.
Route::group(['namespace' => 'Theme\Nameci\Http\Controllers', 'middleware' => ['web', 'core']], function () {
    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {

        // Add your custom route here
        // Ex: Route::get('hello', 'NameciController@getHello');

    });
});

Theme::routes();

Route::group(['namespace' => 'Theme\Nameci\Http\Controllers', 'middleware' => ['web', 'core']], function () {
    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {

        Route::get('/', 'NameciController@getIndex')
            ->name('public.index');

        Route::get('sitemap.xml', 'NameciController@getSiteMap')
            ->name('public.sitemap');

        Route::get('{slug?}' . config('core.base.general.public_single_ending_url'), 'NameciController@getView')
            ->name('public.single');

    });
});
