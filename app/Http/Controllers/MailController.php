<?php

namespace App\Http\Controllers;

use App\Mail\ContactMail;
use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class MailController extends Controller
{
    public function sendToAdmin(Request $request)
    {
        $data = [
            'subject'   => 'sherazdev::Contact Form',
            'template'  => 'emails.contact',
            'name'      => $request->name,
            'email'     => $request->email,
            'body'      => $request->form_message,
        ];

        $setting    = Setting::first();

        Mail::to($setting->mail_to)->send(new ContactMail($data));
        return redirect()->back();
    }
}
