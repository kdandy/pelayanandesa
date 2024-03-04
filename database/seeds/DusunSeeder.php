<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DusunSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('dusun')->insert([
            ['nama' => 'tampomea'],
            ['nama' => 'orobatu'],
            ['nama' => 'tamppouhai'],
            ['nama' => 'bolomalala'],
            ['nama' => 'bone-bone'],
        ]);
    }
}
