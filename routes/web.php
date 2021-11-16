<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SampleController;
use App\Http\Controllers\SotukenController;

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
    return view('sotuken/hotel');
});

Route::post('sotuken/index',[SotukenController::class, 'search']);
Route::get('sotuken/tekito/{hotel_id?}',[SotukenController::class, 'info']);


Route::get('/sample',[SampleController::class, 'index']);
Route::get('/sample2',[SampleController::class, 'change']);
Route::get('/sample3/{hotel_id?}',[SampleController::class, 'info']);
Route::post('/sample2',[SampleController::class, 'search']);

Route::get('sotuken/hotel',[SampleController::class, 'index']);