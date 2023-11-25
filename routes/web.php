<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ProductController;
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

// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});







// Product Group
// Route::group(['prefix' => '/'], function () {
//     Route::get('/manage', [ProductController::class, "index"])->name('product.index');
//     Route::get('/create', [ProductController::class, "create"])->middleware(['auth', 'verified'])->name('product.manage');
//     Route::post('/store', [ProductController::class, "store"])->middleware(['auth', 'verified'])->name('product.store');
//     Route::get('/edit{id}', [ProductController::class, "edit"])->middleware(['auth', 'verified'])->name('product.edit');
//     Route::post('/update{id}', [ProductController::class, "update"])->middleware(['auth', 'verified'])->name('product.update');
//     Route::post('/destroy{id}', [ProductController::class, "destroy"])->middleware(['auth', 'verified'])->name('product.destroy');
//     Route::post('/upload', [ProductController::class, "uploadimage"])->middleware(['auth', 'verified'])->name('ckeditor.upload');
// });




    Route::get('/dashboard', [ProductController::class, "index"])->middleware(['auth', 'verified'])->name('dashboard');
    Route::get('/create', [ProductController::class, "create"])->middleware(['auth', 'verified'])->name('product.manage');
    Route::post('/store', [ProductController::class, "store"])->middleware(['auth', 'verified'])->name('product.store');
    Route::get('/edit/{id}', [ProductController::class, "edit"])->middleware(['auth', 'verified'])->name('product.edit');
    Route::post('/update/{id}', [ProductController::class, "update"])->middleware(['auth', 'verified'])->name('product.update');
    Route::get('/destroy/{id}', [ProductController::class, "destroy"])->middleware(['auth', 'verified'])->name('product.destroy');
    Route::get('/view/{id}', [ProductController::class, "show"])->middleware(['auth', 'verified'])->name('product.view');


    




require __DIR__.'/auth.php';
