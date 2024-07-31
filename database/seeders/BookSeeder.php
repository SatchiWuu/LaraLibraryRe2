<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class BookSeeder extends Seeder
{
    public function run()
    {
        // $this->call(AuthorsSeeder::class);
        // $this->call(PublisherSeeder::class);
        $faker = Faker::create();

        $filePaths = [];
        for ($i = 11; $i <= 30; $i++) {
            $filePaths[] = "images/{$i}.jpg";
        }

        // Get all author and publisher IDs
        $authorIds = \App\Models\Author::pluck('id')->toArray();
        $publisherIds = \App\Models\Publisher::pluck('id')->toArray();

        for ($i = 0; $i < 100; $i++) {
            \App\Models\Book::create([
                'title' => $faker->sentence(5),
                'publication' => $faker->year,
                'genre' => $faker->randomElement(['fiction', 'non-fiction', 'fantasy', 'mystery', 'romance']),
                'language' => $faker->languageCode,
                'reviews' => $faker->numberBetween(0, 5),
                'images' => $faker->randomElement($filePaths),
                'summary' => $faker->text(100),
                'author_id' => $faker->randomElement($authorIds),
                'publisher_id' => $faker->randomElement($publisherIds),
            ]);
        }
    }
}
