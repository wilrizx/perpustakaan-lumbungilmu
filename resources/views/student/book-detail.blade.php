@extends('layouts.app')

@section('title', $book->title . ' - Lumbung Ilmu')

@section('content')
<!-- Breadcrumb -->
<div class="mb-8">
    <nav class="flex" aria-label="Breadcrumb">
        <ol class="inline-flex items-center space-x-1 md:space-x-3">
            <li class="inline-flex items-center">
                <a href="{{ route('home') }}" class="inline-flex items-center text-sm font-medium text-gray-700 hover:text-blue-600">
                    <i class="fas fa-home mr-2"></i>
                    Beranda
                </a>
            </li>
            <li>
                <div class="flex items-center">
                    <i class="fas fa-chevron-right text-gray-400 mx-2"></i>
                    <a href="{{ route('books') }}" class="text-sm font-medium text-gray-700 hover:text-blue-600">
                        Koleksi Buku
                    </a>
                </div>
            </li>
            <li aria-current="page">
                <div class="flex items-center">
                    <i class="fas fa-chevron-right text-gray-400 mx-2"></i>
                    <span class="text-sm font-medium text-gray-500">{{ $book->title }}</span>
                </div>
            </li>
        </ol>
    </nav>
</div>

<!-- Book Detail Section -->
<div class="bg-white rounded-3xl shadow-xl overflow-hidden mb-8">
    <div class="flex flex-col items-center justify-center p-8">
        <!-- Title and Author -->
        <h1 class="text-3xl md:text-4xl font-bold text-gray-800 mb-4 leading-tight text-center">
            {{ $book->title }}
        </h1>
        <div class="flex items-center text-xl text-gray-600 mb-6">
            <i class="fas fa-user mr-3 text-blue-500"></i>
            <span class="font-semibold">{{ $book->author }}</span>
        </div>
        <!-- Badges -->
        <div class="flex flex-wrap justify-center gap-4 mb-8">
            <span class="inline-flex items-center px-4 py-2 bg-blue-500 text-white text-sm font-semibold rounded-full shadow-lg">
                <i class="fas fa-tag mr-2"></i>
                {{ $book->category }}
            </span>
            <span class="inline-flex items-center px-4 py-2 bg-purple-500 text-white text-sm font-semibold rounded-full shadow-lg">
                <i class="fas fa-calendar mr-2"></i>
                {{ $book->publication_year }}
            </span>
        </div>
        <!-- Book Details Grid -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 w-full max-w-2xl mx-auto">
            <div class="flex items-center p-4 bg-gray-50 rounded-xl">
                <div class="w-12 h-12 bg-green-100 rounded-xl flex items-center justify-center mr-4">
                    <i class="fas fa-file-alt text-green-600 text-xl"></i>
                </div>
                <div>
                    <div class="text-sm text-gray-600">Jumlah Halaman</div>
                    <div class="text-lg font-semibold text-gray-800">{{ $book->pages }} halaman</div>
                </div>
            </div>
            <div class="flex items-center p-4 bg-gray-50 rounded-xl">
                <div class="w-12 h-12 bg-orange-100 rounded-xl flex items-center justify-center mr-4">
                    <i class="fas fa-clock text-orange-600 text-xl"></i>
                </div>
                <div>
                    <div class="text-sm text-gray-600">Ditambahkan</div>
                    <div class="text-lg font-semibold text-gray-800">{{ $book->created_at->format('d M Y') }}</div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Related Books Section -->
@if($relatedBooks->count() > 0)
<div class="bg-white border border-gray-200 rounded-2xl shadow-sm hover:shadow-lg transition-all duration-300 overflow-hidden card-hover p-4 flex flex-col items-center">
    <span class="mb-2 inline-flex items-center px-2 py-1 bg-blue-500 text-white text-xs font-semibold rounded-full">
        {{ $relatedBook->category }}
    </span>
    <h3 class="text-lg font-bold text-gray-800 mb-2 line-clamp-2 leading-tight text-center">
        {{ $relatedBook->title }}
    </h3>
    <div class="space-y-1 mb-4 w-full">
        <div class="flex items-center text-gray-600">
            <i class="fas fa-user mr-2 text-blue-500 w-4"></i>
            <span class="text-sm">{{ $relatedBook->author }}</span>
        </div>
        <div class="flex items-center text-gray-600">
            <i class="fas fa-calendar mr-2 text-purple-500 w-4"></i>
            <span class="text-sm">{{ $relatedBook->publication_year }}</span>
        </div>
        <div class="flex items-center text-gray-600">
            <i class="fas fa-file-alt mr-2 text-green-500 w-4"></i>
            <span class="text-sm">{{ $relatedBook->pages }} halaman</span>
        </div>
    </div>
    <a href="{{ route('books.detail', $relatedBook) }}" class="w-full inline-flex items-center justify-center px-4 py-2 bg-gradient-to-r from-blue-500 to-blue-600 text-white rounded-xl font-semibold hover:from-blue-600 hover:to-blue-700 transition-all duration-300 text-sm">
        <i class="fas fa-eye mr-2"></i>
        Lihat Detail
    </a>
</div>
@endif

<!-- Back to Books Button -->
<div class="mt-8 text-center">
    <a href="{{ route('books') }}" class="inline-flex items-center px-6 py-3 bg-gray-100 text-gray-700 rounded-xl font-semibold hover:bg-gray-200 transition-all duration-300">
        <i class="fas fa-arrow-left mr-3"></i>
        Kembali ke Koleksi Buku
    </a>
</div>
@endsection
