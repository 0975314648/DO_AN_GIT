<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::group(['namespace'=>'Admin'],function(){
    Route::group(['prefix'=>'login'],function(){
        Route::get('/','LoginController@getLogin');
        Route::post('/','LoginController@postLogin');
    });
    Route::get('logout','LoginController@getLogout');
});

Route::get('quantrihethong', function () {
    return view('layout_quantri.index');
});

Route::get('sinhviendefault', function () {
    return view('sinhvien.default');
});

Route::get('giangviendefault', function () {
    return view('giangvien.default');
});