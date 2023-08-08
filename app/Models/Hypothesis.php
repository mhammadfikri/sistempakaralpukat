<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class Hypothesis extends Model implements HasMedia
{
    use HasFactory, InteractsWithMedia;
    
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
