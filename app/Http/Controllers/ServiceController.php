<?php

namespace App\Http\Controllers;

use App\Models\AboutMe;
use App\Models\Service;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    public function index()
    {
        $services = Service::get();
        return view('backend.services.index', compact('services'));
    }

    public function edit(Service $service)
    {
        return view('backend.services.edit', compact('service'));
    }

    public function create()
    {
        return view('backend.services.create');
    }

    public function store(Request $request)
    {
        Service::create([
            'icon'           =>  $request->icon,
            'title'          =>  $request->title,
            'description'    =>  $request->description,
        ]);

        return redirect()->route('admin.service.index');
    }

    public function update(Request $request, Service $service)
    {
        $service->update([
           'icon'           =>  $request->icon,
           'title'          =>  $request->title,
           'description'    =>  $request->description,
        ]);

        return redirect()->route('admin.service.index');
    }

    public function destroy(Request $request, Service $service)
    {
        $service->delete();
        return redirect()->route('admin.service.index');
    }
}
