<?php

namespace App\Http\Controllers;
use ApiipClient\Apiip;

class GeoLocationController extends Controller
{
    public function location()
    {
        $access_key = '714d61d8-a308-4bf9-b61c-3d6a81e94793';
        $client     = new Apiip($access_key);
        $details    = $client->getLocation();

        return response()->json($details);
    }
}
