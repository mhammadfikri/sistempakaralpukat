<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hypothesis extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'code',
        'name',
        'weight',
        'description',
        'solution',
    ];
    public function rule()
    {
        return $this->hasMany(Rule::class);
    }
    
    public function diagnosis()
    {
        return $this->hasMany(Diagnosis::class);
    }
    
}
