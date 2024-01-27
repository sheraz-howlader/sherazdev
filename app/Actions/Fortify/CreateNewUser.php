<?php

namespace App\Actions\Fortify;

use App\Http\Services\MailSender;
use App\Models\User;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Laravel\Fortify\Contracts\CreatesNewUsers;
use Laravel\Jetstream\Jetstream;

class CreateNewUser implements CreatesNewUsers
{
    use PasswordValidationRules;
    Use MailSender;

    public function create(array $input)
    {
        Validator::make($input, [
            'first_name'    => ['required', 'string', 'max:255'],
            'last_name'     => ['required', 'string', 'max:255'],
            'email'         => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password'      => $this->passwordRules(),
            'terms'         => Jetstream::hasTermsAndPrivacyPolicyFeature() ? ['accepted', 'required'] : '',
        ])->validate();

        $user = User::create([
            'first_name'    => $input['first_name'],
            'last_name'     => $input['last_name'],
            'email'         => $input['email'],
            'password'      => Hash::make($input['password']),
        ]);

        $data = [
            'subject'   => 'Welcome to sherazdev - Your Registration is Successful',
            'template'  => 'emails.register',
            'name'      => $user->full_name,
            'email'     => $user->email,
            'password'  => $input['password'],
            'mail_to'   => $user->email,
        ];

        $this->emailSend($data);
//        Auth::login($user);
    }
}
