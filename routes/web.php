<?php

use App\Http\Controllers\AboutMeController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\MailController;
use App\Http\Controllers\PortfolioController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\SettingContrller;
use Illuminate\Support\Facades\Route;


Route::get('/', HomeController::class)->name('public.home');
Route::get('portfolio/{id}', [HomeController::class, 'portfolioShow'])->name('home.portfolio');
Route::post('mail/send', [MailController::class, 'sendToAdmin'])->name('mail.send');

Route::group(['middleware' => ['auth', 'admin'], 'as' => 'admin.', 'prefix' => 'portal'], function (){
    Route::resource('about-me', AboutMeController::class)->only('create', 'update');
    Route::resource('service', ServiceController::class);
    Route::get('porfolio/image/delete/{id}', [PortfolioController::class, 'portfolioImageDestroy'])->name('porfolio.image.delete');
    Route::resource('portfolio', PortfolioController::class);
    Route::resource('setting', SettingContrller::class)->only('create', 'update');
});

Route::fallback(function () {
    return redirect()->route('public.home');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', function () {
        // return view('dashboard');
        return redirect()->route( 'admin.about-me.create');
    })->name('dashboard');
});
