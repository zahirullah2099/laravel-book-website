<?php

use App\Http\Controllers\BookController;
use App\Http\Controllers\GenreController;
use App\Http\Controllers\registerLoginController;
use App\Http\Controllers\UserController;
use App\Http\Middleware\ValidUser; 
use Illuminate\Support\Facades\Route;
 
Route::get('/', [BookController::class, 'dashboard'])->name('home');
 

// ROUTES FOR LOGIN AND REGISTER
Route::controller(registerLoginController::class)->middleware('guest')->group(function(){
  Route::get('/login', 'showLogin')->name('show.login');
  Route::post('/login', 'loginUser')->name('loginUser');
  Route::get('/register', 'showRegister')->name('show.register'); 
  Route::post('/register', 'registerUser')->name('registerUser');
  Route::get('/logout', 'logoutUser')->name('logoutUser')->withoutMiddleware('guest');
});



// ROUTES FOR BOOKS
// Route::middleware(validUser::class)->controller(BookController::class)->group(function () {
//     Route::get('/books', 'index')->name('books') ;
//     Route::post('/addBook', 'store')->name('add.book') ;
//     Route::post('/bookSearch', 'bookSearch')->name('book.search');
//     Route::get('bookView/{id}', 'edit')->name('book.view') ;
//     Route::post('bookUpdate/{id}', 'update')->name('book.update') ;
//     Route::get('bookDetails/{id}', 'bookDetails')->name('book.details') ;
//     Route::delete('bookDelete/{id}', 'bookDelete')->name('book.delete') ;
// });

Route::middleware(validUser::class)->controller(BookController::class)->group(function () {
  Route::group(['prefix' => 'book', 'as' => 'book.'], function(){ 
    Route::get('/books', 'index')->name('books') ;
    Route::post('/addBook', 'store')->name('add.book') ;
    Route::post('/bookSearch', 'bookSearch')->name('search');
    Route::get('bookView/{id}', 'edit')->name('view') ;
    Route::post('bookUpdate/{id}', 'update')->name('update') ;
    Route::get('bookDetails/{id}', 'bookDetails')->name('details') ;
    Route::delete('bookDelete/{id}', 'bookDelete')->name('delete') ;


    Route::get('/getGenre/{id}', 'getGenreBooks')->name('get.GenreBooks');
  });
});
 


  // ROUTES FOR GENRE
Route::middleware(validUser::class)->controller(GenreController::class)->group(function () {
Route::get('/genre', 'index')->name('genre'); 
Route::post('/genre/search', 'search')->name('genre.search');
Route::post('/addGenre', 'addGenre')->name('add.genre');
Route::get('genreView/{id}', 'edit')->name('genre.edit');
Route::post('genreUpdate/{id}', 'update')->name('genre.update');
Route::delete('genreDelete/{id}', 'genreDelete')->name('genre.delete');
});


// ROUTES FOR USER PROFILE
Route::middleware(validUser::class)->controller(UserController::class)->group(function () {
Route::get('/profile', 'userProfile')->name('user.profile');
Route::post('/updateProfile','updateProfile')->name('update.profile');
});

// Route::fallback(function () { 
//     return redirect()->back();  
// });
