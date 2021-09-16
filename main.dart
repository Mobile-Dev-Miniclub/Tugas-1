import "dart:math";

class Dadu {
  int _sisi = 6;
  int jumlahPutaran = 2;
  List<int> _nilai = [4, 6];

  int get sisi => _sisi;

  int get nilaiMaksimum => _sisi * jumlahPutaran;

  set sisi(int s) {
    if (s < 2) {
      _sisi = 2;
    } else {
      _sisi = s;
    }
  }
  void lempar(){
    List<int> nilaiBaru = [];
    Random rand = Random();

    for(int i=0; i<jumlahPutaran; i++){
      nilaiBaru.add(rand.nextInt(sisi) + 1);
    }
    _nilai = nilaiBaru;
  }

  void cetakDadu() => print(_nilai);
}
 
void main() {
  Dadu d = Dadu();
  d.sisi = 4;
  d.jumlahPutaran = 3;
  d.lempar();
  d.cetakDadu();
  d.jumlahPutaran = 3;
  d.lempar();
  d.cetakDadu();
}