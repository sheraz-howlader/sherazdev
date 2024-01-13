<?php

namespace Database\Seeders;

use App\Models\Portfolio;
use Illuminate\Database\Seeder;

class PortfolioSeeder extends Seeder
{
    public function run(): void
    {
        Portfolio::updateOrCreate([
            'category_id'   => 1,
            'title'         => 'Store Management',
            'description'   => 'this is a small & simple app for store management',
            'technologies'  => 'iOS, HTML5, CSS3, PHP, Java',
        ]);
    }
}
