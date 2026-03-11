// Soal 1: Class Mobil
// membuat class Mobil dgn properti merk, model, tahun
// lalu buat objeknya dan cetak informasinya

class Mobil {
  String? merk;
  String? model;
  int? tahun;

  Mobil(String merk, String model, int tahun) {
    this.merk = merk;
    this.model = model;
    this.tahun = tahun;
  }

  void tampilkanInfo() {
    print("Merk  : $merk");
    print("Model : $model");
    print("Tahun : $tahun");
  }
}

void main() {
  // buat 2 objek mobil
  Mobil mobil1 = Mobil("Toyota", "Avanza", 2021);
  print("Data Mobil 1:");
  mobil1.tampilkanInfo();

  print("");

  Mobil mobil2 = Mobil("Daihatsu", "Xenia", 2019);
  print("Data Mobil 2:");
  mobil2.tampilkanInfo();
}
