<?php

namespace App\Models;

// use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Tag extends Model
{
    use HasFactory, softDeletes;


    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'tag',
        'color',
        'remark',
    ];


	/**
	 * Generate a new UUID for the model.
	 */
	// public function newUniqueId(): string
	// {
	//     return (string) Uuid::uuid4();
	// }
    
}
