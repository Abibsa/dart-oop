// Soal 4: Named Constructor pada class Segitiga
// buat class segitiga dgn properti alas, tinggi, jenis
// pakai named constructor utk tiap jenis segitiga

class Segitiga {
  double? alas;
  double? tinggi;
  String? jenis;

  // constructor biasa
  Segitiga(this.alas, this.tinggi, this.jenis);

  // named constructor segitiga siku-siku
  Segitiga.sikuSiku(double alas, double tinggi) {
    this.alas = alas;
    this.tinggi = tinggi;
    this.jenis = "Siku-siku";
  }

  // named constructor segitiga sama sisi
  Segitiga.samaSisi(double sisi) {
    this.alas = sisi;
    // rumus tinggi segitiga sama sisi = sisi * akar(3)/2
    this.tinggi = sisi * 0.866;
    this.jenis = "Sama Sisi";
  }

  // named constructor segitiga sama kaki
  Segitiga.samaKaki(double alas, double tinggi) {
    this.alas = alas;
    this.tinggi = tinggi;
    this.jenis = "Sama Kaki";
  }

  double hitungLuas() {
    return 0.5 * alas! * tinggi!;
  }

  void tampilkanInfo() {
    print("Jenis  : $jenis");
    print("Alas   : $alas");
    print("Tinggi : $tinggi");
    print("Luas   : ${hitungLuas()}");
  }
}

void main() {
  // pakai named constructor
  Segitiga s1 = Segitiga.sikuSiku(10, 8);
  print("Segitiga 1:");
  s1.tampilkanInfo();

  print("");

  Segitiga s2 = Segitiga.samaSisi(6);
  print("Segitiga 2:");
  s2.tampilkanInfo();

  print("");

  Segitiga s3 = Segitiga.samaKaki(8, 10);
  print("Segitiga 3:");
  s3.tampilkanInfo();
}
