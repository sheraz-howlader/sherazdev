<?php

namespace Database\Seeders;

use App\Models\Setting;
use Illuminate\Database\Seeder;

class SettingSeeder extends Seeder
{
    public function run(): void
    {
       Setting::updateOrCreate([
           'mail_to'        => 'mdsherazhowlader@gmail.com',
           'mail_from'      => 'admin@sherazdev.com',
           'title'          => 'Full Stack Developer',
           'description'    => 'Sheraz Howlader is full stack developer in bangladesh',
       ]);
    }
}
