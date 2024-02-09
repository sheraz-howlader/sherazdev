<?php

namespace App\Http\Controllers;

use App\Models\Experience;
use Illuminate\Http\Request;

class ExperienceController extends Controller
{
    public function index()
    {
        $experiences = Experience::get();
        return view('backend.experience.index', compact('experiences'));
    }

    public function create()
    {
        return view('backend.experience.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'company_name'  =>  ['required'],
            'designation'   =>  ['required'],
            'start'         =>  ['required'],
        ]);

        Experience::create([
            'company_name'  =>  $request->company_name,
            'address'       =>  $request->address ?? null,
            'designation'   =>  $request->designation,
            'description'   =>  $request->description,
            'start'         =>  $request->start,
            'end'           =>  $request->is_present ? null : $request->end,
            'is_present'    =>  $request->is_present ?? null,
        ]);

        return redirect()->route('admin.experience.index');
    }

    public function edit(Experience $experience)
    {
        return view('backend.experience.edit', compact('experience'));
    }

    public function update(Request $request, Experience $experience)
    {
        $request->validate([
            'company_name'  =>  ['required'],
            'designation'   =>  ['required'],
            'start'         =>  ['required'],
        ]);

        $experience->update([
            'company_name'  =>  $request->company_name,
            'address'       =>  $request->address ?? null,
            'designation'   =>  $request->designation,
            'description'   =>  $request->description,
            'start'         =>  $request->start,
            'end'           =>  $request->is_present ? null : $request->end,
            'is_present'    =>  $request->is_present ?? null,
            'status'        =>  $request->status ?? 0,
        ]);

        return redirect()->route('admin.experience.index');
    }

    public function destroy(Experience $experience)
    {
        $experience->delete();
        return redirect()->route('admin.experience.index');
    }
}
