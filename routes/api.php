<?php

use App\Http\Controllers\AdminController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthorController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\PublisherController;
use App\Http\Controllers\TransactionController;
use App\Http\Controllers\UserController;

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

Route::apiResource('authors', AuthorController::class);
Route::apiResource('book', BookController::class);
Route::apiResource('publisher', PublisherController::class);
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/getAuthors', [AuthorController::class, 'index']);
Route::get('/fetchData', [BookController::class, 'bookDetails']);
Route::post('/register', [UserController::class, 'save_register']);

Route::post('/BorrowRequest',[TransactionController::class, 'requestBorrow']);
Route::get('/retrieveCart',[TransactionController::class, 'retrieveCart']);

Route::get('/retrieveBorrow/{id}',[TransactionController::class, 'retrieveBorrow']);
Route::get('/retrieveBorrowedBooks/{id}',[TransactionController::class, 'retrieveBorrowedBooks']);
Route::get('/checkAvailability/{id}',[TransactionController::class, 'checkAvailability']);

Route::get('/retrieveAllBorrow',[AdminController::class, 'retrieveAllBorrow']);
Route::get('/confirmRequest/{id}',[AdminController::class, 'confirmRequest']);
Route::get('/confirmReturn/{id}',[AdminController::class, 'confirmReturn']);
Route::get('/retrieveTopAuthors',[AdminController::class, 'retrieveTopAuthors']);
Route::get('/retrieveTopBooks',[AdminController::class, 'retrieveTopBooks']);
Route::get('/retrieveTopGenre',[AdminController::class, 'retrieveTopGenre']);

Route::delete('/removeFromCart/{id}', [TransactionController::class, 'removeCart']);

Route::get('/search/{query}', [BookController::class, 'search']);