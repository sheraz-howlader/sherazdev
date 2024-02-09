<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Education extends Model
{
    protected $guarded = ['id'];

    public function getDisplayStatusAttribute()
    {
        $status = $this->status;

        return match ($status) {
            1 => '<span class="badge bg-success"> Active </span>',
            default => '<span class="badge bg-danger"> De-active </span>'
        };
    }
}
