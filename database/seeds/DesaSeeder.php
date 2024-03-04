<?php

use App\Desa;
use Illuminate\Database\Seeder;

class DesaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Desa::create([
            'nama_desa'         => 'Orobatu',
            'nama_kecamatan'    => 'Tapalang',
            'nama_kabupaten'    => 'Mamuju',
            'alamat'            => 'Tapalang',
            'nama_kepala_desa'  => "Maslim, S.Sos",
            'alamat_kepala_desa' => "Alamat",
            'logo'              => "favicon.png",
        ]);
    }
}
