<?php

use App\Http\Controllers\GeoLocationController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Services\WHMService;
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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['as' => 'public.api'], function (){
    Route::get('location', [GeoLocationController::class, 'location'])->name('location');
});


Route::post('/create-account', function (Request $request, WHMService $whm) {
    // $request->validate([
    //     'domain' => 'required|string',
    //     'username' => 'required|string|min:6|max:8',
    //     'password' => 'required|string|min:8',
    //     'plan' => 'required|string',
    // ]);

    $response = $whm->createAccount(
        $request->domain,
        $request->username,
        $request->password,
        $request->plan
    );

    return response()->json($response);
});

Route::post('/change-package', function (Request $request, WHMService $whm) {
    // $request->validate([
    //     'domain' => 'required|string',
    //     'username' => 'required|string|min:6|max:8',
    //     'password' => 'required|string|min:8',
    //     'plan' => 'required|string',
    // ]);

    $response = $whm->changePackage(
        $request->username,
        $request->plan       
    );

    return response()->json($response);
});

Route::post('/delete-account', function (Request $request, WHMService $whm) {
    // $request->validate([
    //     'username' => 'required|string|min:6|max:8',
    // ]);

    $response = $whm->deleteAccount(
        $request->username
    );

    return response()->json($response);
});

Route::post('/create-package', function (Request $request, WHMService $whm) {
    // $validated = $request->validate([
    //     'name' => 'required|string', //package name
    //     'quota' => 'required|integer', //disk quota
    //     'bwlimit' => 'required|integer', //bandwidth limit
    //     'maxftp' => 'nullable|integer', //max ftp accounts
    //     'maxsql' => 'nullable|integer', //max sql databases
    //     'maxpop' => 'nullable|integer', //max email accounts
    //     'maxsub' => 'nullable|integer', //max subdomains
    // ]);

    $response = $whm->createPackage([
        'name' => $request->name,
        'quota' => $request->quota,
        'bwlimit' => $request->bwlimit,
        'maxftp' => $request->maxftp,
        'maxsql' => $request->maxsql,
        'maxpop' => $request->maxpop,
        'maxsub' => $request->maxsub,
    ]);

    return response()->json($response);
});