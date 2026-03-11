// Challenge: Class Rumah
// buat class Rumah dgn properti nama, alamat, jumlahKamar
// buat method display() utk cetak info rumah

class Rumah {
  String? nama;
  String? alamat;
  int? jumlahKamar;

  Rumah(this.nama, this.alamat, this.jumlahKamar);

  void display() {
    print("Nama Rumah    : $nama");
    print("Alamat        : $alamat");
    print("Jumlah Kamar  : $jumlahKamar");
  }
}

void main() {
  Rumah rumah1 = Rumah(
    "Rumah Abib",
    "Jl. Sunan Mantingan, Tegalsambi, Kec. Tahunan, Kabupaten Jepara, Jawa Tengah",
    3,
  );

  print("Data Rumah:");
  rumah1.display();
}
