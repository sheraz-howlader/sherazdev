<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('portfolios', function (Blueprint $table) {
            $table->id();
            $table->integer('category_id');
            $table->string('title')->nullable();
            $table->string('thumbnail')->nullable();
            $table->longText('description')->nullable();
            $table->string('client_name')->nullable();
            $table->string('industry_name')->nullable();
            $table->string('technologies')->nullable();
            $table->string('delivery_date')->nullable();
            $table->string('url')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('portfolios');
    }
};
