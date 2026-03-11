// Soal 2: Encapsulation - RekeningBank
// saldo dibuat private biar gak bisa diakses langsung
// akses lewat getter, ubah lewat setor() dan tarik()

class RekeningBank {
  // properti private pake underscore
  String _nomorRekening;
  String _namaPemilik;
  double _saldo;

  RekeningBank(this._nomorRekening, this._namaPemilik, this._saldo);

  // getter buat akses saldo
  double get saldo => _saldo;
  String get nomorRekening => _nomorRekening;
  String get namaPemilik => _namaPemilik;

  void setor(double jumlah) {
    if (jumlah > 0) {
      _saldo += jumlah;
      print("Setor Rp ${jumlah.toStringAsFixed(0)} berhasil");
      print("Saldo skrg: Rp ${_saldo.toStringAsFixed(0)}");
    } else {
      print("Jumlah setor harus lebih dari 0");
    }
  }

  void tarik(double jumlah) {
    if (jumlah > 0) {
      if (jumlah <= _saldo) {
        _saldo -= jumlah;
        print("Tarik Rp ${jumlah.toStringAsFixed(0)} berhasil");
        print("Saldo skrg: Rp ${_saldo.toStringAsFixed(0)}");
      } else {
        print("Saldo tidak cukup! Saldo: Rp ${_saldo.toStringAsFixed(0)}");
      }
    } else {
      print("Jumlah tarik harus lebih dari 0");
    }
  }

  void tampilkanInfo() {
    print("No. Rekening : $_nomorRekening");
    print("Pemilik      : $_namaPemilik");
    print("Saldo        : Rp ${_saldo.toStringAsFixed(0)}");
  }
}

void main() {
  RekeningBank rek = RekeningBank("7182930456", "Muhammad Ashab", 500000);

  print("Info Rekening Awal:");
  rek.tampilkanInfo();
  print("");

  // coba setor
  print(">> Setor uang:");
  rek.setor(250000);
  print("");

  // coba tarik
  print(">> Tarik uang:");
  rek.tarik(100000);
  print("");

  // coba tarik lebih dari saldo
  print(">> Tarik uang (melebihi saldo):");
  rek.tarik(1000000);
  print("");

  // setor lagi
  print(">> Setor lagi:");
  rek.setor(300000);
  print("");

  print("Info Rekening Akhir:");
  rek.tampilkanInfo();

  // akses saldo lewat getter
  print("\nCek saldo via getter: Rp ${rek.saldo.toStringAsFixed(0)}");
}
