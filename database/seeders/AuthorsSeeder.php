<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class AuthorsSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();

        for ($i = 0; $i < 100; $i++) {
            \App\Models\Author::create([
                'lname' => $faker->lastName,
                'fname' => $faker->firstName,
                'gender' => $faker->randomElement(['male', 'female']),
                'address' => $faker->address,
                'phone' => $faker->phoneNumber,
            ]);
        }
    }
}
