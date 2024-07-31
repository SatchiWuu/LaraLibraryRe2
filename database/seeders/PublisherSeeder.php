<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class PublisherSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();

        for ($i = 0; $i < 100; $i++) {
            \App\Models\Publisher::create([
                'name' => $faker->company,
                'country' => $faker->country,
                'email' => $faker->email,
                'phone' => $faker->phoneNumber,
                'status' => $faker->randomElement(['active', 'inactive']),
            ]);
        }
    }
}
