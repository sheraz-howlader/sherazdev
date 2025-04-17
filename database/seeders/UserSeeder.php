<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    public function run(): void
    {
       User::updateOrCreate([
           'role_id'        => 1,
           'first_name'     => 'Sheraz',
           'last_name'      => 'Howlader',
           'image'          => 'frontend/images/profile.jpg',
           'dob'            => "22-12-1997",
           'phone'          => '+8801728692643',
           'telephone'      => '+8809638555680',
           'email'          => 'admin@sherazdev.com.bd',
           'address'        => "H - 248, R - 08, <br>Phaze - 2, Sonadanga. <br>Khulna - 9100 </p>",
           'password'       => bcrypt('1781510139680'),
           'resume'         => 'frontend/sheraz-howlader.pdf',
       ]);
    }
}
