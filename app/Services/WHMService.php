<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;

class WHMService
{
    protected $host;
    protected $token;

    public function __construct()
    {
        $this->host = "https://ssdnvme.hostarchives.com:2087";
        $this->token = "8d736c4073936113cca524e9f45f4b3fd120a32d";
    }


    public function createAccount($domain, $username, $password, $plan)
    {
        $response = Http::withHeaders([
            'Authorization' => 'whm root:' . $this->token,
        ])->get("{$this->host}/json-api/createacct", [
            'api.version' => 1,
            'username' => $username,
            'domain' => $domain,
            'password' => $password,
            'plan' => $plan,
            'contactemail' => "itsme@sherazdev.com.bd",
        ]);

        return $response->json();
    }
}

