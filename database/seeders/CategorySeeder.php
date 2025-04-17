<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Category::updateOrCreate([
            'name' => 'LMS',
            'slug' => 'lms',
        ]);

        Category::updateOrCreate([
            'name' => 'HRM',
            'slug' => 'hrm',
        ]);

        Category::updateOrCreate([
            'name' => 'ERP',
            'slug' => 'erp',
        ]);

        Category::updateOrCreate([
            'name' => 'CRM',
            'slug' => 'crm',
        ]);

        Category::updateOrCreate([
            'name' => 'WordPress',
            'slug' => 'wordpress',
        ]);

        Category::updateOrCreate([
            'name' => 'E-commerce',
            'slug' => 'ecommerce',
        ]);
    }
}
