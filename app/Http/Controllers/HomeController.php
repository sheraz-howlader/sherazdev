<?php

namespace App\Http\Controllers;

use App\Models\AboutMe;
use App\Models\Education;
use App\Models\Experience;
use App\Models\Portfolio;
use App\Models\Service;
use App\Models\Setting;
use App\Models\User;
use App\Models\Visitor;

class HomeController extends Controller
{
    public function __invoke()
    {
        $user       = User::first();
        $about_me   = AboutMe::first();
        $services   = Service::all();
        $educations  = Education::where('status', true)->get();
        $experiences = Experience::where('status', true)->get();
        $portfolios  = Portfolio::all();

        return view('frontend.layouts.app', compact('user', 'about_me', 'services','educations','experiences','portfolios'));
    }

    public function portfolioShow($id)
    {
        $portfolio = Portfolio::where('id', $id)->first();
        return view('frontend.portfolio.index', compact('portfolio'));
    }
}
