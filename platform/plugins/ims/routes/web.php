<?php

Route::group(['namespace' => 'Botble\Ims\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'ims', 'as' => 'ims.'], function () {
            Route::resource('', 'ImsController')->parameters(['' => 'ims']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'ImsController@deletes',
                'permission' => 'ims.destroy',
            ]);
        });
    });

});
