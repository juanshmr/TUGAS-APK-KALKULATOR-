import 'dart:io';

double tambah(double a, double b) => a + b;
double kurang(double a, double b) => a - b;
double kali(double a, double b) => a * b;
double bagi(double a, double b) => b == 0 ? double.nan : a / b;
double modulus(double a, double b) => b == 0 ? double.nan : a % b;

void main() {
  while (true) {
    print("\n=== Kalkulator Sederhana ===");
    print("1. Tambah");
    print("2. Kurang");
    print("3. Kali");
    print("4. Bagi");
    print("5. Modulus");
    print("6. Keluar");
    stdout.write("Pilih operasi (1-6): ");
    int pilihan = int.parse(stdin.readLineSync()!);

    if (pilihan == 6) {
      break;
    }
    stdout.write("Masukkan angka pertama: ");
    double a = double.parse(stdin.readLineSync()!);

    stdout.write("Masukkan angka kedua: ");
    double b = double.parse(stdin.readLineSync()!);

    double hasil = 0;
    switch (pilihan) {
      case 1:
        hasil = tambah(a, b);
        break;
      case 2:
        hasil = kurang(a, b);
        break;
      case 3:
        hasil = kali(a, b);
        break;
      case 4:
        hasil = bagi(a, b);
        break;
      case 5:
        hasil = modulus(a, b);
        break;
      default:
        print("Pilihan tidak valid!");
        continue;
    }

    if (hasil.isNaN) {
      print("Error: Tidak bisa dibagi 0");
    } else {
      print("Hasil: $hasil");
    }
  }
}
