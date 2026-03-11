// Soal 2: Class Mahasiswa dengan default value
// buat class mahasiswa yg punya nama dan nim
// kasih default value, terus coba buat objek tanpa isi nilai

class Mahasiswa {
  String? nama;
  String? nim;

  // constructor dgn default value
  Mahasiswa({String? nama = "Muhammad Ashab", String? nim = "231240001399"}) {
    this.nama = nama;
    this.nim = nim;
  }

  void tampilkanInfo() {
    print("Nama : $nama");
    print("NIM  : $nim");
  }
}

void main() {
  // objek tanpa kasih nilai (pakai default)
  Mahasiswa mhs1 = Mahasiswa();
  print("Mahasiswa 1 (default):");
  mhs1.tampilkanInfo();

  print("");

  // objek dgn kasih nilai sendiri
  Mahasiswa mhs2 = Mahasiswa(nama: "Ahmad Fauzan", nim: "231240001400");
  print("Mahasiswa 2:");
  mhs2.tampilkanInfo();
}
