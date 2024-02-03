<?php

namespace App\Http\Controllers;

use App\Models\AboutMe;
use App\Models\Portfolio;
use App\Models\Service;
use App\Models\Setting;
use App\Models\User;
use App\Models\Visitor;

class HomeController extends Controller
{
    public function __invoke()
    {
        $ip_data = json_decode(file_get_contents(config('app.url') . '/v1/location'));

        Visitor::updateOrCreate([
            'ip'        => $ip_data->ip,
            'continent_name'   => $ip_data->continent_name,
            'country'   => $ip_data->country_name,
            'capital'   => $ip_data->capital,
            'city'      => $ip_data->city,
            'timezone'  => $ip_data->timezone,
            'latitude'  => $ip_data->latitude,
            'longitude' => $ip_data->longitude,
            'user_agent'=> request()->userAgent(),
        ]);

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
