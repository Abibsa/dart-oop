// Soal 3: Class Buku dgn parameterized constructor
// buat class Buku, propertinya judul sama pengarang
// pakai parameterized constructor buat inisialisasi

class Buku {
  String? judul;
  String? pengarang;

  // parameterized constructor
  Buku(this.judul, this.pengarang);

  void tampilkanInfo() {
    print("Judul     : $judul");
    print("Pengarang : $pengarang");
  }
}

void main() {
  Buku buku1 = Buku("Laskar Pelangi", "Andrea Hirata");
  print("Buku 1:");
  buku1.tampilkanInfo();

  print("");

  Buku buku2 = Buku("Negeri 5 Menara", "Ahmad Fuadi");
  print("Buku 2:");
  buku2.tampilkanInfo();
}
