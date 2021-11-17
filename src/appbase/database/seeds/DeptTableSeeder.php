<?php

use Illuminate\Database\Seeder;

class DeptTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //Table reset
        DB::table("dept")->delete();
        DB::table("dept")->insert([ "code" => "KOM", "name" => "Komisaris", "displayname" => "Komisaris", "description" => "Komisaris", "numsort" => 10, "status" => 1, ]); 
        DB::table("dept")->insert([ "code" => "BOD", "name" => "Board Of Director", "displayname" => "Direksi", "description" => "Direksi", "numsort" => 20, "status" => 1, ]); 
        DB::table("dept")->insert([ "code" => "ACCENT", "name" => "Accent", "displayname" => "Accent", "description" => "Accent", "numsort" => 30, "status" => 1, ]); 
        DB::table("dept")->insert([ "code" => "BALI", "name" => "Bali", "displayname" => "Bali", "description" => "Bali", "numsort" => 40, "status" => 1, ]); 
        DB::table("dept")->insert([ "code" => "GCH", "name" => "Graha Cipta Hadiprana", "displayname" => "Graha Cipta Hadiprana", "description" => "Graha Cipta Hadiprana", "numsort" => 50, "status" => 1, ]); 
        DB::table("dept")->insert([ "code" => "ART", "name" => "Artwork", "displayname" => "Artwork", "description" => "Artwork", "numsort" => 60, "status" => 1, ]); 
        DB::table("dept")->insert([ "code" => "PRC", "name" => "Perencanaan", "displayname" => "Perencanaan", "description" => "Perencanaan", "numsort" => 70, "status" => 1, ]); 
        DB::table("dept")->insert([ "code" => "SUP", "name" => "Support", "displayname" => "Support", "description" => "Support", "numsort" => 80, "status" => 1, ]); 
        
    }
}
