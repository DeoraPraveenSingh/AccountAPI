<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthenticationController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//register new user
Route::Post("sign-up", [AuthenticationController::class,'createAccount']);
//login user
Route::Post("sign-in", [AuthenticationController::class,'signIn']);

//using middleware
Route::group(['middleware' => ['auth:sanctum']], function () {

    Route::get('/profile', function(Request $request) {
        return auth()->user();
    });

	// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
	//     return $request->user();
	// });

    Route::post('/sign-out', [AuthenticationController::class, 'signOut']);
});
