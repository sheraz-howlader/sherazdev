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


    // 🧑‍💻 Account Management
    // ✅ Create account    createacct      /json-api/createacct?api.version=1
    // 🛠️ Edit account      modifyacct      /json-api/modifyacct?api.version=1
    // 🛠️ Change Package    changepackage   /json-api/modifyacct?api.version=1
    // ❌ Delete account    removeacct      /json-api/removeacct?api.version=1
    // 🔁 Suspend account   suspendacct	    /json-api/suspendacct?api.version=1
    // 🔓 Unsuspend account	unsuspendacct	/json-api/unsuspendacct?api.version=1
    // 🔄 List accounts     listaccts	    /json-api/listaccts?api.version=1
    // 📄 Account summary   accountsummary	/json-api/accountsummary?api.version=1&user=username

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

    public function changePackage($username, $plan)
    {
        $response = Http::withHeaders([
        'Authorization' => 'whm litehoster:' . $this->token,
        ])->get("{$this->host}/json-api/changepackage", [
            'api.version' => 1,
            'user' => $username,
            'pkg'  => $plan,
        ]);

        return $response->json();
    }


    // 📦 Package Management
    // ✅ Create package    addpkg      /json-api/addpkg?api.version=1
    // 🛠️ Edit package      editpkg     /json-api/editpkg?api.version=1
    // ❌ Delete package    killpkg     /json-api/killpkg?api.version=1
    // 🔄 List packages     listpkgs	/json-api/listpkgs?api.version=1
    // 📄 Show package info	getpkginfo	/json-api/getpkginfo?api.version=1&pkg=package_name

    public function createPackage(array $options)
    {
        $response = Http::withHeaders([
            'Authorization' => 'whm litehoster:' . $this->token,
        ])->get("{$this->host}/json-api/addpkg", array_merge(['api.version' => 1], $options));

        return $response->json();
    }


    // 🧾 DNS & Domain Management
    // 🔧 Edit DNS zone         editzonerecord      /json-api/editzonerecord
    // ➕ Add DNS record        addzonerecord       /json-api/addzonerecord
    // ❌ Delete DNS record     removezonerecord    /json-api/removezonerecord
    // 📄 Get DNS zone info     dumpzone	        /json-api/dumpzone
}

