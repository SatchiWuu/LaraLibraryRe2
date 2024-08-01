<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\TransactionController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/authors', function () {
    return view('authors.index');
});
Route::get('/publisher', function () {
    return view('publisher.index');
});
Route::get('/book', function () {
    return view('book.index');
});
Route::get('/dashboard', function () {
    return view('admin.dashboard');
});

Route::get('/register', [App\Http\Controllers\UserController::class, 'register']);
Route::get('/login', [App\Http\Controllers\UserController::class, 'login'])->name('login');
Route::post('/save_register', [App\Http\Controllers\UserController::class, 'save_register'])->name('save_user');
Route::post('/save_login', [App\Http\Controllers\UserController::class, 'save_login'])->name('save_login');
Route::post('/logout', [App\Http\Controllers\UserController::class, 'logout'])->name('logout');
Route::get('/profile', [TransactionController::class, 'profile']);
Route::get('/transact',[TransactionController::class, 'transact']);

Route::get('/pendings',[AdminController::class, 'pendings']);
Route::get('/dashboard',[AdminController::class, 'dashboard']);



