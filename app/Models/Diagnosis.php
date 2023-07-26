<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Diagnosis extends Model
{
    use HasFactory;

    protected $fillable = [
        'hypothesis_id',
        'name',
        'description',
        'value',
    ];
    public function rule()
    {
        return $this->hasMany(Rule::class);
    }
    public function hypothesis()
    {
        return $this->belongsTo(Hypothesis::class);
    }
}
