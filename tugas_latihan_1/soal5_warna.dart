// Soal 5: Constant Constructor pada class Warna
// buat class Warna dgn properti red, green, blue
// pakai const constructor, terus buktiin objek const itu identik

class Warna {
  final int red;
  final int green;
  final int blue;

  // constant constructor
  const Warna(this.red, this.green, this.blue);

  void tampilkanInfo() {
    print("RGB($red, $green, $blue)");
  }
}

void main() {
  // buat beberapa warna pakai const
  const Warna merah = Warna(255, 0, 0);
  const Warna hijau = Warna(0, 255, 0);
  const Warna biru = Warna(0, 0, 255);
  const Warna putih = Warna(255, 255, 255);

  print("Warna-warna:");
  print("Merah  -> ");
  merah.tampilkanInfo();
  print("Hijau  -> ");
  hijau.tampilkanInfo();
  print("Biru   -> ");
  biru.tampilkanInfo();
  print("Putih  -> ");
  putih.tampilkanInfo();

  // buktiin kalo const object itu sama (hash code nya sama)
  print("\nPembuktian const constructor:");
  const Warna w1 = Warna(255, 0, 0);
  const Warna w2 = Warna(255, 0, 0);
  print("Hash w1: ${w1.hashCode}");
  print("Hash w2: ${w2.hashCode}");
  print("w1 identik dgn w2? ${identical(w1, w2)}");
}
