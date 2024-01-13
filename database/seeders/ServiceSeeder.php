<?php

namespace Database\Seeders;

use App\Models\Service;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ServiceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
       Service::updateOrCreate([
           'title'          => 'App Design & Develop',
           'description'    => 'Lisque persius interesset his et, in quot quidam persequeris vim',
           'icon'           => 'fas fa-paint-brush',
       ]);

        Service::updateOrCreate([
            'title'          => 'Build Android App',
            'description'    => 'Lisque persius interesset his et.',
            'icon'           => 'fas fa-desktop',
        ]);
    }
}
