<?php

namespace App\Http\Services;

class FileUploadService
{
    public static function getFile($file, $path): string
    {
        $fileExtension = uniqid() . '.' . $file->getClientOriginalExtension();
        $uploadPath = $path;
        $file->move(public_path($uploadPath), $fileExtension);

        return $uploadPath . $fileExtension;
    }
}
