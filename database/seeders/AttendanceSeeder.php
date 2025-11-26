<?php

namespace Database\Seeders;

use App\Models\Attendance;
use App\Models\Student;
use Illuminate\Database\Seeder;
use Illuminate\Support\Carbon;

class AttendanceSeeder extends Seeder
{
    /**
     * Run the database seeder.
     */
    public function run(): void
    {
        $students = Student::all();
        
        // Create attendance data for the last 60 days
        for ($i = 0; $i < 60; $i++) {
            $date = Carbon::now()->subDays($i);
            
            // Random number of students attending each day (1-5 students)
            $attendingCount = rand(1, min(5, $students->count()));
            $attendingStudents = $students->random($attendingCount);
            
            foreach ($attendingStudents as $student) {
                Attendance::create([
                    'student_id' => $student->id,
                    'date' => $date->format('Y-m-d'),
                    'time_in' => $date->setTime(rand(7, 10), rand(0, 59))->format('H:i:s'),
                ]);
            }
        }
    }
}