<?php

namespace App\Http\Controllers;

use App\Http\Services\FileHandlerService;
use App\Models\Category;
use App\Models\Portfolio;
use App\Models\PortfolioImage;
use Illuminate\Http\Request;

class PortfolioController extends Controller
{
    public function index()
    {
        $portfolios = Portfolio::get();
        return view('backend.portfolio.index', compact('portfolios'));
    }

    public function edit(Portfolio $portfolio)
    {
        $categories = Category::all();
        return view('backend.portfolio.edit', compact('portfolio', 'categories'));
    }

    public function create()
    {
        $categories = Category::all();
        return view('backend.portfolio.create', compact('categories'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'category_id'    =>  ['required'],
            'title'          =>  ['required'],
            'description'    =>  ['required'],
            'thumbnail'      =>  ['required'],
            'technologies'   =>  ['required'],
        ],[
            'thumbnail.required' => 'The project thumbnail is required.'
        ]);

        $path = 'frontend/images/projects/';
        $file = FileHandlerService::handleFile($request->thumbnail, '', $path);

        Portfolio::create([
            'category_id'    =>  $request->category_id,
            'title'          =>  $request->title,
            'description'    =>  $request->description,
            'thumbnail'      =>  $file,
            'client_name'    =>  $request->client_name,
            'industry_name'  =>  $request->industry_name,
            'technologies'   =>  $request->technologies,
            'delivery_date'  =>  $request->delivery_date,
            'url'            =>  $request->url,
        ]);

        return redirect()->route('admin.portfolio.index');
    }

    public function update(Request $request, Portfolio $portfolio)
    {
        $request->validate([
            'category_id'    =>  ['required'],
            'title'          =>  ['required'],
            'description'    =>  ['required'],
            'technologies'   =>  ['required'],
        ]);

        $path = 'frontend/images/projects/';
        $file = FileHandlerService::handleFile($request->thumbnail, $portfolio->thumbnail, $path);

        $portfolio->update([
           'category_id'    =>  $request->category_id,
           'title'          =>  $request->title,
           'description'    =>  $request->description,
           'thumbnail'      =>  $file,
           'client_name'    =>  $request->client_name,
           'industry_name'  =>  $request->industry_name,
           'technologies'   =>  $request->technologies,
           'delivery_date'  =>  $request->delivery_date,
           'url'            =>  $request->url,
        ]);

        if (isset($request->portfolio_images)) {
            PortfolioImage::addImages($portfolio->id, $request->portfolio_images);
        }

        return redirect()->route('admin.portfolio.index');
    }

    public function destroy(Portfolio $portfolio)
    {
        if (file_exists($portfolio->thumbnail)){
            unlink($portfolio->thumbnail);
        }

        $portfolio->delete();
        return redirect()->route('admin.portfolio.index');
    }

    public function portfolioImageDestroy($id)
    {
        $image = PortfolioImage::findOrFail($id);

        if (file_exists($image->image)){
            unlink($image->image);
        }
        $image->delete();
        return response()->json(['status' => 'success', 'msg' => 'Portfolio image delete success']);
    }
}
