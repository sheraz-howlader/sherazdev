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
        $this->token = "WHZ0GC4N2TVSX51UEHZUG9CVUPKW7833";
    }


    public function createAccount($domain, $username, $password, $plan)
    {
        $response = Http::withHeaders([
            'Authorization' => 'whm litehoster:' . $this->token,
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

