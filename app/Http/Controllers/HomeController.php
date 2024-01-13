<?php

namespace App\Http\Controllers;

use App\Models\AboutMe;
use App\Models\Portfolio;
use App\Models\Service;
use App\Models\Setting;
use App\Models\User;

class HomeController extends Controller
{
    public function __invoke()
    {
        $user       = User::first();
        $setting    = Setting::first();
        $about_me   = AboutMe::first();
        $services   = Service::get();
        $portfolios = Portfolio::get();

        return view('frontend.layouts.app', compact('user','setting', 'about_me', 'services', 'portfolios'));
    }

    public function portfolioShow($id)
    {
        $portfolio = Portfolio::where('id', $id)->first();
        return view('frontend.portfolio.index', compact('portfolio'));
    }
}
