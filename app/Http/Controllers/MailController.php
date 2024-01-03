<?php

namespace App\Http\Controllers;

use App\Mail\ContactMail;
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

        Mail::to('mdsherazhowlader@gmail.com')->send(new ContactMail($data));
        return redirect()->back();
    }
}
