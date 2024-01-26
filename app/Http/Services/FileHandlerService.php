<?php

namespace App\Http\Services;
use App\Http\Services\FileUploadService;

class FileHandlerService
{
    public static function handleFile($request, $existingFile = null, $path)
    {
        if ($request->file('file')) {
            if ($existingFile && file_exists($existingFile)) {
                unlink($existingFile);
            }
            return FileUploadService::getFile($request, $path);
        }
        return $existingFile;
    }
}
