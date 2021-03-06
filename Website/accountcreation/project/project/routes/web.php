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



Route::get('/','HomeController@index');
Route::get('dashboard','HomeController@index');


Auth::routes();


Route::get('/home', 'HomeController@index')->name('home')->middleware('auth');


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/verify', 'Auth\LoginController@verify')->name('verify');
Route::get('/dashboard', 'Auth\LoginController@dashboard')->name('dashboard');


