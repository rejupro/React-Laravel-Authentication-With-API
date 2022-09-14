<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// LoginController
use App\Http\Controllers\user\AuthController;
use App\Http\Controllers\User\UserController;

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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

/* User Login Start */
Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']); 

// Current User Route 
Route::get('/user',[UserController::class, 'User'])->middleware('auth:api');