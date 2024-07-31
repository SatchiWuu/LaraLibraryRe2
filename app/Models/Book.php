<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Scout\Searchable;
use App\Models\Author;
use App\Models\Publisher;

class Book extends Model
{
    use HasFactory, Searchable;

    public function toSearchableArray()
    {
        return [
            'title' => $this->title,

        ];
        
    }

    public function author()
    {
        return $this->belongsTo(Author::class, 'author_id');
    }

    public function publisher()
    {
        return $this->belongsTo(Publisher::class, 'publisher_id');
    }
}
