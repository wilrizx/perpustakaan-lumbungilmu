@extends('layouts.app')

@section('title', 'Absensi - Lumbung Ilmu')

@section('content')
<div class="max-w-2xl mx-auto">
    <!-- Header Section -->
    <div class="text-center mb-8">
        <div class="inline-flex items-center justify-center w-20 h-20 bg-gradient-to-br from-blue-500 to-blue-600 rounded-3xl mb-6">
            <i class="fas fa-clock text-white text-3xl"></i>
        </div>
        <h1 class="text-4xl font-bold text-gray-800 mb-4">
            Absensi Digital
        </h1>
        <p class="text-xl text-gray-600 leading-relaxed">
            Masukkan nama Anda untuk melakukan absensi masuk perpustakaan
        </p>
    </div>

    <!-- Main Form Card -->
    <div class="bg-white rounded-3xl shadow-xl p-8 card-hover">
        <form method="POST" action="{{ route('attendance') }}" class="space-y-8">
            @csrf
            
            <div class="space-y-4">
                <label for="name" class="block text-lg font-semibold text-gray-800">
                    <i class="fas fa-user mr-3 text-blue-600"></i>
                    Nama Siswa
                </label>
                <div class="relative">
                    <div class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none">
                        <i class="fas fa-user-graduate text-gray-400 text-lg"></i>
                    </div>
                    <input type="text" 
                           name="name" 
                           id="name" 
                           value="{{ old('name') }}"
                           class="w-full pl-12 pr-4 py-4 border-2 border-gray-200 rounded-2xl text-lg focus:outline-none focus:ring-4 focus:ring-blue-100 focus:border-blue-500 transition-all duration-300"
                           placeholder="Ketik minimal 1 huruf untuk mencari nama..."
                           autocomplete="off"
                           required
                           autofocus>
                    
                    <!-- Custom Dropdown -->
                    <div id="student-dropdown" class="absolute z-10 w-full mt-1 bg-white border border-gray-200 rounded-xl shadow-lg hidden max-h-60 overflow-y-auto">
                        <!-- Results will be populated here -->
                    </div>
                    
                    <!-- Loading indicator -->
                    <div id="loading-indicator" class="absolute right-4 top-1/2 transform -translate-y-1/2 hidden">
                        <div class="animate-spin rounded-full h-5 w-5 border-b-2 border-blue-500"></div>
                    </div>
                </div>
                @error('name')
                    <div class="mt-2 text-sm text-red-600 ml-4">
                        <i class="fas fa-exclamation-circle mr-2"></i>
                        {{ $message }}
                    </div>
                @enderror
                <p class="text-sm text-gray-500 ml-4">
                    <i class="fas fa-info-circle mr-2"></i>
                    Masukkan nama yang sudah terdaftar di sistem
                </p>
            </div>

            <div class="flex flex-col sm:flex-row gap-4 pt-4">
                <a href="{{ route('home') }}" class="flex-1 inline-flex items-center justify-center px-6 py-4 border-2 border-gray-300 text-gray-700 rounded-2xl font-semibold hover:bg-gray-50 hover:border-gray-400 transition-all duration-300">
                    <i class="fas fa-arrow-left mr-3"></i>
                    Kembali ke Beranda
                </a>
                <button type="submit" class="flex-1 inline-flex items-center justify-center px-6 py-4 bg-gradient-to-r from-blue-600 to-blue-700 text-white rounded-2xl font-semibold hover:from-blue-700 hover:to-blue-800 transition-all duration-300 shadow-lg hover:shadow-xl">
                    <i class="fas fa-sign-in-alt mr-3"></i>
                    Absen Masuk
                </button>
            </div>
        </form>
    </div>

    <!-- Information Cards -->
    <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mt-8">
        <!-- How to Use -->
        <div class="bg-gradient-to-br from-blue-50 to-indigo-50 rounded-2xl p-6 border border-blue-100">
            <div class="flex items-center mb-4">
                <div class="w-12 h-12 bg-blue-500 rounded-xl flex items-center justify-center mr-4">
                    <i class="fas fa-question-circle text-white text-xl"></i>
                </div>
                <h3 class="text-lg font-semibold text-gray-800">Cara Menggunakan</h3>
            </div>
            <ul class="space-y-3 text-sm text-gray-600">
                <li class="flex items-start">
                    <span class="w-6 h-6 bg-blue-500 text-white rounded-full flex items-center justify-center text-xs font-bold mr-3 mt-0.5">1</span>
                    <span>Masukkan nama lengkap Anda di kolom input</span>
                </li>
                <li class="flex items-start">
                    <span class="w-6 h-6 bg-blue-500 text-white rounded-full flex items-center justify-center text-xs font-bold mr-3 mt-0.5">2</span>
                    <span>Klik tombol "Absen Masuk"</span>
                </li>
                <li class="flex items-start">
                    <span class="w-6 h-6 bg-blue-500 text-white rounded-full flex items-center justify-center text-xs font-bold mr-3 mt-0.5">3</span>
                    <span>Sistem akan memverifikasi data Anda</span>
                </li>
                <li class="flex items-start">
                    <span class="w-6 h-6 bg-blue-500 text-white rounded-full flex items-center justify-center text-xs font-bold mr-3 mt-0.5">4</span>
                    <span>Setelah berhasil, Anda dapat melihat koleksi buku</span>
                </li>
            </ul>
        </div>

        <!-- Rules -->
        <div class="bg-gradient-to-br from-green-50 to-emerald-50 rounded-2xl p-6 border border-green-100">
            <div class="flex items-center mb-4">
                <div class="w-12 h-12 bg-green-500 rounded-xl flex items-center justify-center mr-4">
                    <i class="fas fa-shield-alt text-white text-xl"></i>
                </div>
                <h3 class="text-lg font-semibold text-gray-800">Ketentuan Absensi</h3>
            </div>
            <ul class="space-y-3 text-sm text-gray-600">
                <li class="flex items-start">
                    <i class="fas fa-check-circle text-green-500 mr-3 mt-0.5"></i>
                    <span>Absensi hanya bisa dilakukan sekali per hari</span>
                </li>
                <li class="flex items-start">
                    <i class="fas fa-check-circle text-green-500 mr-3 mt-0.5"></i>
                    <span>Nama harus sudah terdaftar di sistem</span>
                </li>
                <li class="flex items-start">
                    <i class="fas fa-check-circle text-green-500 mr-3 mt-0.5"></i>
                    <span>Masukkan nama lengkap sesuai data siswa</span>
                </li>
                <li class="flex items-start">
                    <i class="fas fa-check-circle text-green-500 mr-3 mt-0.5"></i>
                    <span>Tidak ada peminjaman buku keluar</span>
                </li>
            </ul>
        </div>
    </div>

    <!-- Quick Stats -->
    <div class="bg-white rounded-2xl shadow-lg p-6 mt-8">
        <h3 class="text-lg font-semibold text-gray-800 mb-4 text-center">
            <i class="fas fa-chart-pie mr-2 text-purple-600"></i>
            Statistik Hari Ini
        </h3>
        <div class="grid grid-cols-3 gap-4 text-center">
            <div>
                <div class="text-2xl font-bold text-blue-600">{{ \App\Models\Attendance::whereDate('date', now())->count() }}</div>
                <div class="text-sm text-gray-600">Absensi</div>
            </div>
            <div>
                <div class="text-2xl font-bold text-green-600">{{ \App\Models\Student::count() }}</div>
                <div class="text-sm text-gray-600">Siswa</div>
            </div>
            <div>
                <div class="text-2xl font-bold text-purple-600">{{ \App\Models\Book::count() }}</div>
                <div class="text-sm text-gray-600">Buku</div>
            </div>
        </div>
    </div>
</div>
@endsection

@push('scripts')
<script>
document.addEventListener('DOMContentLoaded', function() {
    const nameInput = document.getElementById('name');
    const dropdown = document.getElementById('student-dropdown');
    const loadingIndicator = document.getElementById('loading-indicator');
    let searchTimeout;
    let selectedIndex = -1;
    let students = [];

    // Function to show dropdown
    function showDropdown() {
        dropdown.classList.remove('hidden');
    }

    // Function to hide dropdown
    function hideDropdown() {
        dropdown.classList.add('hidden');
        selectedIndex = -1;
    }

    // Function to search students
    function searchStudents(query) {
        if (query.length < 1) {
            hideDropdown();
            return;
        }

        loadingIndicator.classList.remove('hidden');

        fetch(`{{ route('api.students.search') }}?q=${encodeURIComponent(query)}`)
            .then(response => response.json())
            .then(data => {
                students = data;
                renderDropdown(data);
                loadingIndicator.classList.add('hidden');
            })
            .catch(error => {
                console.error('Error:', error);
                loadingIndicator.classList.add('hidden');
                hideDropdown();
            });
    }

    // Function to render dropdown
    function renderDropdown(studentList) {
        if (studentList.length === 0) {
            dropdown.innerHTML = `
                <div class="p-4 text-gray-500 text-center">
                    <i class="fas fa-search mr-2"></i>
                    Tidak ada siswa yang ditemukan
                </div>
            `;
            showDropdown();
            return;
        }

        dropdown.innerHTML = studentList.map((student, index) => `
            <div class="student-item p-3 cursor-pointer hover:bg-blue-50 flex items-center transition-colors ${index === selectedIndex ? 'bg-blue-50' : ''}" 
                 data-name="${student.name}" data-index="${index}">
                <div class="w-10 h-10 bg-gradient-to-br from-blue-500 to-blue-600 rounded-full flex items-center justify-center mr-3">
                    <i class="fas fa-user text-white text-sm"></i>
                </div>
                <div class="flex-1">
                    <div class="font-semibold text-gray-800">${student.name}</div>
                    <div class="text-sm text-gray-500">NIS: ${student.nis}</div>
                </div>
            </div>
        `).join('');

        showDropdown();

        // Add click event listeners to student items
        dropdown.querySelectorAll('.student-item').forEach(item => {
            item.addEventListener('click', function() {
                const studentName = this.getAttribute('data-name');
                nameInput.value = studentName;
                hideDropdown();
                nameInput.focus();
            });
        });
    }

    // Input event listener with debouncing
    nameInput.addEventListener('input', function() {
        const query = this.value.trim();
        
        clearTimeout(searchTimeout);
        searchTimeout = setTimeout(() => {
            searchStudents(query);
        }, 300); // 300ms debounce
    });

    // Focus event listener
    nameInput.addEventListener('focus', function() {
        if (this.value.trim().length >= 1) {
            searchStudents(this.value.trim());
        }
    });

    // Keyboard navigation
    nameInput.addEventListener('keydown', function(e) {
        if (!dropdown.classList.contains('hidden')) {
            if (e.key === 'ArrowDown') {
                e.preventDefault();
                selectedIndex = Math.min(selectedIndex + 1, students.length - 1);
                updateSelection();
            } else if (e.key === 'ArrowUp') {
                e.preventDefault();
                selectedIndex = Math.max(selectedIndex - 1, -1);
                updateSelection();
            } else if (e.key === 'Enter' && selectedIndex >= 0) {
                e.preventDefault();
                nameInput.value = students[selectedIndex].name;
                hideDropdown();
            } else if (e.key === 'Escape') {
                hideDropdown();
            }
        }
    });

    // Function to update visual selection
    function updateSelection() {
        dropdown.querySelectorAll('.student-item').forEach((item, index) => {
            if (index === selectedIndex) {
                item.classList.add('bg-blue-50');
            } else {
                item.classList.remove('bg-blue-50');
            }
        });
    }

    // Click outside to close dropdown
    document.addEventListener('click', function(e) {
        if (!nameInput.contains(e.target) && !dropdown.contains(e.target)) {
            hideDropdown();
        }
    });

    // Prevent form submission if no student is selected from dropdown
    nameInput.closest('form').addEventListener('submit', function(e) {
        const inputValue = nameInput.value.trim();
        if (inputValue.length < 1) {
            e.preventDefault();
            nameInput.focus();
            return false;
        }
    });
});
</script>
@endpush
