<?php

namespace App\Http\Services;
use App\Http\Services\FileUploadService;

class FileHandlerService
{
    public static function handleFile($file, $existingFile = null, $path)
    {
        if ($file) {
            if ($existingFile && file_exists($existingFile)) {
                unlink($existingFile);
            }
            return FileUploadService::getFile($file, $path);
        }
        return $existingFile;
    }
}
