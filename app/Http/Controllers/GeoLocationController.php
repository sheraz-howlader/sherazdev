<?php

namespace App\Http\Controllers;

class GeoLocationController extends Controller
{
    public function location()
    {
        $ip             = file_get_contents("http://ipecho.net/plain");
        $ip_data_json   = file_get_contents("http://www.geoplugin.net/json.gp?ip=$ip");
        $ip_data        = json_decode($ip_data_json);

        if ($ip_data !== null) {
            unset($ip_data->geoplugin_credit);
            return response()->json([
                'ip'                => $ip,
                'continent_name'    => $ip_data->geoplugin_continentName,
                'country_name'      => $ip_data->geoplugin_countryName,
                'capital'       => $ip_data->geoplugin_city,
                'city'          => $ip_data->geoplugin_regionName,
                'latitude'      => $ip_data->geoplugin_latitude,
                'longitude'     => $ip_data->geoplugin_longitude,
                'timezone'      => $ip_data->geoplugin_timezone,
            ]);
        } else {
            return response()->json(['error' => 'Failed to decode JSON']);
        }
    }
}
