<?php

namespace App\Http\Controllers;

use App\Http\Services\FileHandlerService;
use App\Models\Setting;
use Illuminate\Http\Request;

class SettingContrller extends Controller
{
    public function index()
    {
        //
    }

    public function create()
    {
        $setting = Setting::first();
        return view('backend.setting', compact('setting'));
    }

    public function store(Request $request)
    {
        //
    }

    public function show(Setting $setting)
    {
        //
    }

    public function edit(Setting $setting)
    {
        //
    }

    public function update(Request $request, Setting $setting)
    {
        $request->validate([
            'meta_title'        => ['required'],
            'meta_description'  => ['required'],
            'meta_keyword'      => ['required'],
            'mail_to'           => ['required'],
            'hero_type_writer'  => ['required'],
        ]);

        $path = 'frontend/images/';
        $icon = FileHandlerService::handleFile($request->icon, $setting->icon, $path);
        $hero_background = FileHandlerService::handleFile($request->hero_background, $setting->hero_background, $path);

        $setting->update([
            'meta_title'        => $request->meta_title,
            'meta_description'  => $request->meta_description,
            'meta_keyword'      => $request->meta_keyword,
            'mail_to'           => $request->mail_to,
            'icon'              => $icon,
            'hero_background'   => $hero_background,
            'hero_type_writer'  => $request->hero_type_writer,
        ]);

        return redirect()->route('admin.setting.create');
    }

    public function destroy(Setting $setting)
    {
        //
    }
}
