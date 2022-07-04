<?php

Route::group(['namespace' => 'Botble\Counterup\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'counterups', 'as' => 'counterup.'], function () {
            Route::resource('', 'CounterupController')->parameters(['' => 'counterup']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'CounterupController@deletes',
                'permission' => 'counterup.destroy',
            ]);
        });
    });

});
