<?php

namespace App\Http\Controllers;

use App\Models\Education;
use Illuminate\Http\Request;

class EducationController extends Controller
{
    public function index()
    {
        $educations = Education::get();
        return view('backend.education.index', compact('educations'));
    }

    public function create()
    {
        return view('backend.education.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'institute_name'=>  ['required'],
            'group'         =>  ['required'],
            'department'    =>  ['required'],
            'session_year'  =>  ['required'],
        ]);

        Education::create([
            'institute_name'=>  $request->institute_name,
            'group'         =>  $request->group,
            'department'    =>  $request->department,
            'description'   =>  $request->description,
            'session_year'  =>  $request->session_year,
            'result'        =>  $request->result,
        ]);

        return redirect()->route('admin.education.index');
    }

    public function edit(Education $education)
    {
        return view('backend.education.edit', compact('education'));
    }

    public function update(Request $request, Education $education)
    {
        $request->validate([
            'institute_name'=>  ['required'],
            'group'         =>  ['required'],
            'department'    =>  ['required'],
            'session_year'  =>  ['required'],
        ]);

        $education->update([
            'institute_name'=>  $request->institute_name,
            'group'         =>  $request->group,
            'department'    =>  $request->department,
            'description'   =>  $request->description,
            'session_year'  =>  $request->session_year,
            'result'        =>  $request->result,
            'status'        =>  $request->status?? 0,
        ]);

        return redirect()->route('admin.education.index');
    }

    public function destroy(Education $education)
    {
        $education->delete();
        return redirect()->route('admin.education.index');
    }
}
