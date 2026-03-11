// Soal 3: Polymorphism - BangunDatar, Persegi, Segitiga
// override method hitungLuas di masing2 class turunan

class BangunDatar {
  String? nama;

  BangunDatar(this.nama);

  double hitungLuas() {
    return 0;
  }

  void tampilkanInfo() {
    print("$nama - Luas: ${hitungLuas()}");
  }
}

// Persegi override hitungLuas
class Persegi extends BangunDatar {
  double? sisi;

  Persegi(this.sisi) : super("Persegi");

  @override
  double hitungLuas() {
    return sisi! * sisi!;
  }

  @override
  void tampilkanInfo() {
    print("$nama (sisi: $sisi)");
    print("Luas = ${hitungLuas()}");
  }
}

// Segitiga juga override hitungLuas
class Segitiga extends BangunDatar {
  double? alas;
  double? tinggi;

  Segitiga(this.alas, this.tinggi) : super("Segitiga");

  @override
  double hitungLuas() {
    return 0.5 * alas! * tinggi!;
  }

  @override
  void tampilkanInfo() {
    print("$nama (alas: $alas, tinggi: $tinggi)");
    print("Luas = ${hitungLuas()}");
  }
}

void main() {
  Persegi persegi = Persegi(5);
  print("Hitung luas persegi:");
  persegi.tampilkanInfo();

  print("");

  Segitiga segitiga = Segitiga(10, 8);
  print("Hitung luas segitiga:");
  segitiga.tampilkanInfo();

  print("");

  // polymorphism: tipe parent tapi isi child
  print("Polymorphism dgn List<BangunDatar>:");
  List<BangunDatar> daftarBangun = [
    Persegi(4),
    Segitiga(6, 3),
    Persegi(7),
  ];

  for (var bangun in daftarBangun) {
    bangun.tampilkanInfo();
    print("");
  }
}
