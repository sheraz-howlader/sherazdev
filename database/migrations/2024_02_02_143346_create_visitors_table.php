<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('visitors', function (Blueprint $table) {
            $table->id();
            $table->ipAddress('ip');
            $table->string('continent_name');
            $table->string('country');
            $table->string('capital');
            $table->string('city');
            $table->string('timezone');
            $table->string('latitude');
            $table->string('longitude');
            $table->string('user_agent');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('visitors');
    }
};
