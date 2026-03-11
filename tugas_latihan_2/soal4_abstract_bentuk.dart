// Soal 4: Abstract Class - Bentuk dan Lingkaran
// Bentuk itu abstract, jd gak bisa di-instantiasi langsung
// Lingkaran implement method hitungLuas dari Bentuk

import 'dart:math';

abstract class Bentuk {
  // method abstrak, harus diimplementasi subclass
  double hitungLuas();
  void tampilkanInfo();
}

// Lingkaran implement semua method dari Bentuk
class Lingkaran extends Bentuk {
  double? jejari;

  Lingkaran(this.jejari);

  @override
  double hitungLuas() {
    return pi * jejari! * jejari!;
  }

  @override
  void tampilkanInfo() {
    print("Lingkaran (r = $jejari)");
    print("Luas = ${hitungLuas().toStringAsFixed(2)}");
  }
}

void main() {
  Lingkaran l1 = Lingkaran(7);
  print("Lingkaran 1:");
  l1.tampilkanInfo();

  print("");

  Lingkaran l2 = Lingkaran(14);
  print("Lingkaran 2:");
  l2.tampilkanInfo();

  print("");

  // bisa juga pake tipe Bentuk (abstract)
  Bentuk bentuk = Lingkaran(21);
  print("Pakai tipe abstract Bentuk:");
  bentuk.tampilkanInfo();

  // ini bakal error kalo dicoba:
  // Bentuk b = Bentuk(); // gak bisa instantiasi abstract class
}
