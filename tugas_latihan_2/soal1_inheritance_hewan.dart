// Soal 1: Inheritance - Hewan dan Kucing
// class Hewan jadi parent, Kucing jadi child
// Kucing punya tambahan properti jenisBulu

class Hewan {
  String? nama;

  Hewan(this.nama);

  void suara() {
    print("$nama mengeluarkan suara.");
  }
}

// Kucing mewarisi dari Hewan pake extends
class Kucing extends Hewan {
  String? jenisBulu;

  Kucing(String nama, this.jenisBulu) : super(nama);

  @override
  void suara() {
    print("$nama bersuara: Meong! Meong!");
  }

  void tampilkanInfo() {
    print("Nama       : $nama");
    print("Jenis Bulu : $jenisBulu");
  }
}

void main() {
  Kucing kucing1 = Kucing("Oyen", "Anggora");
  print("Kucing 1:");
  kucing1.tampilkanInfo();
  kucing1.suara();

  print("");

  Kucing kucing2 = Kucing("Belang", "Persia");
  print("Kucing 2:");
  kucing2.tampilkanInfo();
  kucing2.suara();
}
