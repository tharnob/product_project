<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // $this->call([
        //     ProductSeeder::class
        // ]);
   
        for($i=0; $i<=100; $i++)
        {
        DB::table('products')->insert([
            'name' => Str::random(10),
            'quantity' => rand(10, 100),
            'price' => rand(100, 1000),
        ]);
    }
    
    }
}
