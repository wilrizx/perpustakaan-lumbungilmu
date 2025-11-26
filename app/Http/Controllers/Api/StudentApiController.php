<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Student;
use Illuminate\Http\Request;

class StudentApiController extends Controller
{
    public function search(Request $request)
    {
        $query = $request->get('q', '');
        
        if (strlen($query) < 1) {
            return response()->json([]);
        }
        
        $students = Student::where('name', 'LIKE', '%' . $query . '%')
            ->orderBy('name')
            ->limit(10)
            ->get(['id', 'name', 'nis'])
            ->map(function ($student) {
                return [
                    'id' => $student->id,
                    'name' => $student->name,
                    'nis' => $student->nis,
                    'display' => $student->name . ' (NIS: ' . $student->nis . ')'
                ];
            });
        
        return response()->json($students);
    }
}