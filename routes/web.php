<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Log;

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

Route::get('/',function(){
   
   if(auth::guard('user')->check())
   {
   	 return redirect()->route('userview');
   }

   else if(auth::guard('admin')->check())
   {
     return redirect()->route('adminview');
   }
   else
   {
   	  return view('welcome');
   }


});

Route::prefix('admin')->namespace('Auth\Admin')->group(function(){

	 // Authentication Routes Admin...
     Route::get('login','LoginController@showLoginForm')->name('admin.login');
     Route::post('login','LoginController@login');
     Route::post('logout','LoginController@logout')->name('admin.logout');

     // Registration Routes Admin...
     Route::get('register','RegisterController@showRegistrationForm')->name('admin.register');
     Route::post('register','RegisterController@register');

});

 //redirect to admin dashboard
Route::prefix('admin')->namespace('Admin')->group(function(){

	Route::get('dashboard','Dashboardcontroller@index')->name('adminview')->middleware('auth:admin');

});


//redirect to user dashboard
Route::prefix('user')->namespace('User')->group(function(){

	Route::get('dashboard','Dashboardcontroller@index')->name('userview')->middleware('auth:user','verified');
  Route::get('upload','Dashboardcontroller@show')->middleware('auth:user');
  Route::get('menu','Dashboardcontroller@menu')->middleware('auth:user')->name('show_menu');
  Route::get('menu_edit/{id}','Dashboardcontroller@editshow')->middleware('auth:user');
  Route::post('menu_edit/update','Dashboardcontroller@update')->middleware('auth:user');
  Route::get('menu_delete/{id}','Dashboardcontroller@delete')->middleware('auth:user');
});





//image upload
Route::post('user/upload','HomeController@upload');
Route::post('admin/upload','AdminController@upload');

Auth::routes(['verify' => true]);
// Route::get('/home', 'HomeController@index')->name('home');
