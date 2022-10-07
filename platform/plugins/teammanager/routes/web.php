<?php

Route::group(['namespace' => 'Botble\Teammanager\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'teammanagers', 'as' => 'teammanager.'], function () {
            Route::resource('', 'TeammanagerController')->parameters(['' => 'teammanager']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'TeammanagerController@deletes',
                'permission' => 'teammanager.destroy',
            ]);
        });
    });

});
