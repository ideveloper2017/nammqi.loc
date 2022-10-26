<?php

Route::group(['namespace' => 'Botble\Tenders\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'tenders', 'as' => 'tenders.'], function () {
            Route::resource('', 'TendersController')->parameters(['' => 'tenders']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'TendersController@deletes',
                'permission' => 'tenders.destroy',
            ]);
        });
    });

});
