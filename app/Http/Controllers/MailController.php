<?php

namespace App\Http\Controllers;

use App\Http\Services\MailSender;
use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class MailController extends Controller
{
    use MailSender;

    public function sendToAdmin(Request $request)
    {
        $setting    = Setting::first();

        $data = [
            'subject'   => 'sherazdev::Contact Form',
            'template'  => 'emails.contact',
            'name'      => $request->name,
            'email'     => $request->email,
            'body'      => $request->form_message,
            'mail_to'   => $setting->mail_to,
        ];

        $this->emailSend($data);
        return redirect()->back();
    }
}
