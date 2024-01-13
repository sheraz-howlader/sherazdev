<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\MailController;
use Illuminate\Support\Facades\Route;

//Route::get('/', function () {
//    return view('frontend.index');
//});


Route::get('/', HomeController::class);
Route::get('portfolio/{id}', [HomeController::class, 'portfolioShow'])->name('home.portfolio');
Route::post('mail/send', [MailController::class, 'sendToAdmin'])->name('mail.send');
