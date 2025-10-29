import 'dart:io'; // Import library untuk input/output konsol

void main() {
  print('=== Kalkulator Sederhana ===');

  double? angka1 = _getInputAngka('Masukkan angka pertama: ');
  if (angka1 == null) return; // Keluar jika input tidak valid

  String? operator = _getInputOperator();
  if (operator == null) return; // Keluar jika input tidak valid

  double? angka2 = _getInputAngka('Masukkan angka kedua: ');
  if (angka2 == null) return; // Keluar jika input tidak valid

  double? hasil;
  String? error;

  try {
    switch (operator) {
      case '+':
        hasil = angka1 + angka2;
        break;
      case '-':
        hasil = angka1 - angka2;
        break;
      case '*':
        hasil = angka1 * angka2;
        break;
      case '/':
        if (angka2 != 0) {
          hasil = angka1 / angka2;
        } else {
          error = 'Error: Pembagian dengan nol tidak diperbolehkan.';
        }
        break;
      default:
        error = 'Error: Operator tidak dikenal.';
    }
  } catch (e) {
    error = 'Terjadi kesalahan perhitungan: $e';
  }

  print('\n--- Hasil ---');
  if (error != null) {
    print(error);
  } else if (hasil != null) {
    print('$angka1 $operator $angka2 = $hasil');
  } else {
     print('Perhitungan tidak dapat diselesaikan.');
  }
}

double? _getInputAngka(String pesan) {
  stdout.write(pesan); // Menampilkan pesan tanpa baris baru
  String? input = stdin.readLineSync(); // Membaca input dari konsol

  if (input == null || input.isEmpty) {
    print('Input tidak boleh kosong.');
    return null;
  }

  try {
    return double.parse(input);
  } catch (e) {
    print('Input tidak valid. Harap masukkan angka.');
    return null;
  }
}

String? _getInputOperator() {
  stdout.write('Masukkan operator (+, -, *, /): ');
  String? input = stdin.readLineSync();

  if (input == null || !['+', '-', '*', '/'].contains(input.trim())) {
    print('Operator tidak valid. Harap masukkan +, -, *, atau /.');
    return null;
  }

  return input.trim();
}
