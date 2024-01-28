<?php

namespace Database\Seeders;

use App\Models\Setting;
use Illuminate\Database\Seeder;

class SettingSeeder extends Seeder
{
    public function run(): void
    {
       Setting::updateOrCreate([
           'mail_to'            => 'mdsherazhowlader@gmail.com',
           'meta_title'         => 'Sheraz Howlader - Full Stack Developer',
           'meta_keyword'       => 'Full Stack Developer, Sheraz Howlader, Bangladesh',
           'meta_description'   => 'Sheraz Howlader is full stack developer in bangladesh',
           'hero_type_writer'   => 'Full Stack Developer',
       ]);
    }
}
