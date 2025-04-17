<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Portfolio extends Model
{
    protected $guarded = ['id'];

    public function images(): HasMany
    {
        return $this->hasMany(PortfolioImage::class);
    }

    public function category(): BelongsTo
    {
        return $this->BelongsTo(Category::class);
    }
}
