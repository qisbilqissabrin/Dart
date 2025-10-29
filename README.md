# Dart
<h2>Penjelasan code:</h2>

* Impor Library: Program ini mengandalkan library dart:io untuk menangani semua interaksi masukan (stdin) dan keluaran (stdout) pada konsol.

* Validasi Masukan: Dua fungsi pembantu (_getInputAngka dan _getInputOperator) digunakan untuk memastikan bahwa pengguna memasukkan data yang valid (angka dan operator yang benar). Ini menggunakan try-catch untuk mengkonversi string menjadi angka (double) dan menghindari crash.

* Logika Perhitungan (Switch): Perhitungan dilakukan di dalam blok switch-case yang akan memilih operasi (+, -, *, /) yang sesuai berdasarkan operator yang dimasukkan pengguna.

* Penanganan Error Spesifik: Program ini memiliki penanganan khusus untuk menghindari crash saat terjadi pembagian dengan nol, di mana ia akan menampilkan pesan error yang ramah pengguna.

* Output: Setelah semua masukan valid dan perhitungan selesai, program akan menampilkan hasil akhirnya ke konsol.
