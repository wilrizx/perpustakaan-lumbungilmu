<?php

namespace Database\Seeders;

use App\Models\Student;
use Illuminate\Database\Seeder;

class StudentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // $students = [
        //     [
        //         'name' => 'Ahmad Fadillah',
        //         'nis' => '2024001',
        //     ],
        //     [
        //         'name' => 'Siti Nurhaliza',
        //         'nis' => '2024002',
        //     ],
        //     [
        //         'name' => 'Muhammad Rizki',
        //         'nis' => '2024003',
        //     ],
        //     [
        //         'name' => 'Dewi Sartika',
        //         'nis' => '2024004',
        //     ],
        //     [
        //         'name' => 'Budi Santoso',
        //         'nis' => '2024005',
        //     ],
        // ];

        // foreach ($students as $student) {
        //     Student::create($student);
        // }

        // File SQL ada di root folder
        $sqlFile = base_path('students_import_complete.sql');
        
        // Cek apakah file ada
        if (!file_exists($sqlFile)) {
            $this->command->error('File SQL tidak ditemukan!');
            return;
        }
        
        // Baca dan execute SQL
        $sql = file_get_contents($sqlFile);
        DB::unprepared($sql);
        
        $this->command->info('✅ Data siswa berhasil di-import!');
    }
}
