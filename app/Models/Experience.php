<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Experience extends Model
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

    public function getTimelineAttribute()
    {
        $start = Carbon::parse($this->start)->format('F Y');
        $end = $this->is_present ? '<span class="badge bg-primary"> Present </span>' : Carbon::parse($this->end)->format('F Y');

        return "$start to $end";
    }
}
