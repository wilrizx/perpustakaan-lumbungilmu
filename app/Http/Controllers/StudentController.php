<?php

namespace App\Http\Controllers;

use App\Models\Attendance;
use App\Models\Book;
use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StudentController extends Controller
{
    public function index()
    {
        return view('student.index');
    }

    public function attendance(Request $request)
    {
        if ($request->isMethod('post')) {
            $request->validate([
                'name' => 'required|string|max:255',
            ]);

            // Normalize input name
            $searchName = trim($request->name);
            
            // Try exact match first (case insensitive)
            $student = Student::whereRaw('LOWER(name) = LOWER(?)', [$searchName])->first();
            
            if (!$student) {
                // Try partial match (case insensitive)
                $student = Student::whereRaw('LOWER(name) LIKE LOWER(?)', ['%' . $searchName . '%'])->first();
            }

            if (!$student) {
                // Find similar names for suggestion
                $similarStudents = Student::whereRaw('LOWER(name) LIKE LOWER(?)', ['%' . $searchName . '%'])
                    ->limit(3)
                    ->pluck('name')
                    ->toArray();
                
                $errorMessage = 'Nama siswa tidak ditemukan. Pastikan nama yang dimasukkan sesuai dengan data yang terdaftar.';
                
                if (!empty($similarStudents)) {
                    $errorMessage .= ' Mungkin yang Anda maksud: ' . implode(', ', $similarStudents);
                }
                
                return back()->withErrors(['name' => $errorMessage])->withInput();
            }

            // Check if already attended today
            $todayAttendance = Attendance::where('student_id', $student->id)
                ->whereDate('date', now())
                ->first();

            if ($todayAttendance) {
                return back()->withErrors(['name' => 'Anda sudah melakukan absensi hari ini.'])->withInput();
            }

            // Create attendance record
            Attendance::create([
                'student_id' => $student->id,
                'date' => now(),
                'time_in' => now(),
            ]);

            $books = Book::all();

            return view('student.dashboard', compact('student', 'books'));
        }

        return view('student.attendance');
    }

    public function books(Request $request)
    {
        $query = Book::query();

        if ($request->filled('search')) {
            $query->where(function ($q) use ($request) {
                $q->where('title', 'like', '%' . $request->search . '%')
                  ->orWhere('author', 'like', '%' . $request->search . '%');
            });
        }

        if ($request->filled('category')) {
            $query->where('category', $request->category);
        }

        if ($request->filled('author')) {
            $query->where('author', 'like', '%' . $request->author . '%');
        }

        $books = $query->paginate(12);
        $categories = Book::distinct()->pluck('category');
        $authors = Book::distinct()->pluck('author');

        return view('student.books', compact('books', 'categories', 'authors'));
    }

    public function bookDetail(Book $book)
    {
        // Get related books from the same category
        $relatedBooks = Book::where('category', $book->category)
            ->where('id', '!=', $book->id)
            ->limit(4)
            ->get();

        return view('student.book-detail', compact('book', 'relatedBooks'));
    }
}
