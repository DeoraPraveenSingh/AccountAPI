<?php

namespace App\Models;

// use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Tag;


class Transaction extends Model
{
    use HasFactory, softDeletes;


    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'amount',
        'details',
        'date',
        'remark',
    ];


    public function tags(): BelongsToMany
    {
        return $this->belongsToMany(Tag::class);
    }

	/**
	 * Generate a new UUID for the model.
	 */
	// public function newUniqueId(): string
	// {
	//     return (string) Uuid::uuid4();
	// }
    
}
