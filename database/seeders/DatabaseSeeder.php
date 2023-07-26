<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Diagnosis;
use App\Models\Evidence;
use App\Models\Hypothesis;
use App\Models\Rule;
use App\Models\Setting;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Add user data
        User::create([
            'name' => 'admin',
            'email' => 'admin@mail.com',
            'password' => bcrypt('admin123'),
            'role' => 'admin'
        ]);
        User::create([
            'name' => 'user',
            'email' => 'user@mail.com',
            'password' => bcrypt('user123'),
            'role' => 'user'
        ]);
        // Add evidence data
        Evidence::create(['code' => 'EC0001', 'name' => 'Panas']);
        Evidence::create(['code' => 'EC0002', 'name' => 'Sakit Kepala']);
        Evidence::create(['code' => 'EC0003', 'name' => 'Bersin']);
        Evidence::create(['code' => 'EC0004', 'name' => 'Batuk']);
        Evidence::create(['code' => 'EC0005', 'name' => 'Pilek']);
        Evidence::create(['code' => 'EC0006', 'name' => 'Badan lemas']);
        Evidence::create(['code' => 'EC0007', 'name' => 'kedinginan']);
        // Add hypothesis data
        Hypothesis::create(['code' => 'HC0001', 'name' => 'Anemia', 'weight' => 0.5, 'description' => 'penjelasan penyakit', 'solution' => 'minum obat']);
        Hypothesis::create(['code' => 'HC0002', 'name' => 'Bronkhitis', 'weight' => 0.6, 'description' => 'penjelasan penyakit', 'solution' => 'minum obat']);
        Hypothesis::create(['code' => 'HC0003', 'name' => 'Demam', 'weight' => 0.6, 'description' => 'penjelasan penyakit', 'solution' => 'minum obat']);
        Hypothesis::create(['code' => 'HC0004', 'name' => 'Flu', 'weight' => 0.7, 'description' => 'penjelasan penyakit', 'solution' => 'minum obat']);
        // Add diagnosis data
        Diagnosis::create(['hypothesis_id' => 1, 'name' => 'jonathan', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 1, 'name' => 'zeppeli', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 1, 'name' => 'erina', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 1, 'name' => 'dio', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 1, 'name' => 'speedwagon', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 2, 'name' => 'joseph', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 2, 'name' => 'cecar', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 2, 'name' => 'lisa', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 2, 'name' => 'jotaro', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 2, 'name' => 'kakyoin', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 2, 'name' => 'avdol', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 3, 'name' => 'polnaref', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 3, 'name' => 'josuke', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 3, 'name' => 'okuyasu', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 3, 'name' => 'koichi', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 3, 'name' => 'rohan', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 3, 'name' => 'giorno', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 4, 'name' => 'bucalati', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 4, 'name' => 'mista', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 4, 'name' => 'fugo', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 4, 'name' => 'narancia', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 4, 'name' => 'abacio', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 4, 'name' => 'jolyne', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        Diagnosis::create(['hypothesis_id' => 4, 'name' => 'ermes', 'description' => 'pasien', 'value' => rand(50, 100) * 0.01]);
        // Add rule data
        Rule::create(['evidence_id' => 1, 'hypothesis_id' => 1, 'weight' => 0.2]);
        Rule::create(['evidence_id' => 2, 'hypothesis_id' => 1, 'weight' => 0.9]);
        Rule::create(['evidence_id' => 3, 'hypothesis_id' => 1, 'weight' => 0.2]);
        Rule::create(['evidence_id' => 4, 'hypothesis_id' => 1, 'weight' => 0.2]);
        Rule::create(['evidence_id' => 5, 'hypothesis_id' => 1, 'weight' => 0.2]);
        Rule::create(['evidence_id' => 6, 'hypothesis_id' => 1, 'weight' => 0.9]);
        Rule::create(['evidence_id' => 7, 'hypothesis_id' => 1, 'weight' => 0.2]);
        Rule::create(['evidence_id' => 1, 'hypothesis_id' => 2, 'weight' => 0.7]);
        Rule::create(['evidence_id' => 2, 'hypothesis_id' => 2, 'weight' => 0.1]);
        Rule::create(['evidence_id' => 3, 'hypothesis_id' => 2, 'weight' => 0.7]);
        Rule::create(['evidence_id' => 4, 'hypothesis_id' => 2, 'weight' => 0.9]);
        Rule::create(['evidence_id' => 5, 'hypothesis_id' => 2, 'weight' => 0.3]);
        Rule::create(['evidence_id' => 6, 'hypothesis_id' => 2, 'weight' => 0.3]);
        Rule::create(['evidence_id' => 7, 'hypothesis_id' => 2, 'weight' => 0.2]);
        Rule::create(['evidence_id' => 1, 'hypothesis_id' => 3, 'weight' => 0.7]);
        Rule::create(['evidence_id' => 2, 'hypothesis_id' => 3, 'weight' => 0.2]);
        Rule::create(['evidence_id' => 3, 'hypothesis_id' => 3, 'weight' => 0.2]);
        Rule::create(['evidence_id' => 4, 'hypothesis_id' => 3, 'weight' => 0.2]);
        Rule::create(['evidence_id' => 5, 'hypothesis_id' => 3, 'weight' => 0.2]);
        Rule::create(['evidence_id' => 6, 'hypothesis_id' => 3, 'weight' => 0.7]);
        Rule::create(['evidence_id' => 7, 'hypothesis_id' => 3, 'weight' => 0.9]);
        Rule::create(['evidence_id' => 1, 'hypothesis_id' => 4, 'weight' => 0.6]);
        Rule::create(['evidence_id' => 2, 'hypothesis_id' => 4, 'weight' => 0.5]);
        Rule::create(['evidence_id' => 3, 'hypothesis_id' => 4, 'weight' => 0.7]);
        Rule::create(['evidence_id' => 4, 'hypothesis_id' => 4, 'weight' => 0.2]);
        Rule::create(['evidence_id' => 5, 'hypothesis_id' => 4, 'weight' => 0.9]);
        Rule::create(['evidence_id' => 6, 'hypothesis_id' => 4, 'weight' => 0.3]);
        Rule::create(['evidence_id' => 7, 'hypothesis_id' => 4, 'weight' => 0.5]);
        // Add Setting data
        Setting::create(['component' => 'title', 'value' => 'Sistem Pakar Penyakit']);
        Setting::create(['component' => 'description', 'value' => '
            
        ']);
        Setting::create(['component' => 'evidence', 'value' => 'Gejala']);
        Setting::create(['component' => 'hypothesis', 'value' => 'Penyakit']);
    }
}
