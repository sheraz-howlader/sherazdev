<?php

namespace App\Http\Controllers;

use App\Models\AboutMe;
use Illuminate\Http\Request;

class AboutMeController extends Controller
{
    public function create()
    {
        $about = AboutMe::first();
        return view('backend.about-me', compact('about'));
    }

    public function update(Request $request, AboutMe $aboutMe)
    {
        $aboutMe->update([
           'title'          =>  $request->title,
           'description'    =>  $request->description,
        ]);

        return back();
    }
}
