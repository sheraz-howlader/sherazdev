<?php

namespace App\Http\Controllers;

use App\Models\AboutMe;
use Illuminate\Http\Request;

class AboutMeController extends Controller
{
    public function index()
    {
        return view('backend.about-me');
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        //
    }

    public function show(AboutMe $aboutMe)
    {
        //
    }

    public function edit(AboutMe $aboutMe)
    {
        //
    }

    public function update(Request $request, AboutMe $aboutMe)
    {
        //
    }

    public function destroy(AboutMe $aboutMe)
    {
        //
    }
}
