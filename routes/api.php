<?php

use App\Http\Controllers\API\Auth\AuthController;
use App\Http\Controllers\API\NewsUpdateController;
use App\Http\Controllers\API\Users\UserController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::post('register', [AuthController::class, 'register'])->name('register');
Route::post('login', [AuthController::class, 'authLogin'])->name('login');
Route::get('news', [NewsUpdateController::class, 'index']);
Route::middleware('auth:sanctum')->group(function () {
    Route::get('users', [UserController::class, 'index']);
    Route::post('user/update', [UserController::class, 'updateUser']);
    Route::post('logout', [AuthController::class, 'logout'])->name('logout');
});
