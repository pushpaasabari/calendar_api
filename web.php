<?php

use Illuminate\Support\Facades\Route;

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

// Route::get('/', function () {
//     return view('welcome');
// });
use App\Http\Controllers\HolidayController;

Route::get('store-holidays', [HolidayController::class, 'store']);
Route::get('/import', [HolidayController::class, 'import']);
Route::post('/import', [HolidayController::class, 'store']);
Route::get('/list', [HolidayController::class, 'list']);
Route::get('/', [HolidayController::class, 'list']);
Route::get('/calendar', [HolidayController::class, 'holiday']);
Route::post('/calendar', [HolidayController::class, 'calendar']);
Route::get('/ajax_calendar', [HolidayController::class, 'get_ajax_holiday']);