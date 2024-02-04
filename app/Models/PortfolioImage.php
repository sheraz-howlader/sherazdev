<?php

namespace App\Models;

use App\Http\Services\FileHandlerService;
use Illuminate\Database\Eloquent\Model;

class PortfolioImage extends Model
{
    protected $guarded = ['id'];

    public static function addImages($portfolioId, $additional_image)
    {
        $path = 'frontend/images/project_images/';

        foreach ($additional_image as $image) {
            $file = FileHandlerService::handleFile($image, '', $path);

            self::create([
                'portfolio_id' => $portfolioId,
                'image'        => $file,
            ]);
        }
    }
}
