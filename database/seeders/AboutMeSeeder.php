<?php

namespace Database\Seeders;

use App\Models\AboutMe;
use Illuminate\Database\Seeder;

class AboutMeSeeder extends Seeder
{
    public function run(): void
    {
        AboutMe::updateOrCreate([
            'title'         => "Web Developer",
            'description'   => "I help you build brand for your business at an affordable price.",
        ]);
    }
}
