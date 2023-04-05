
void main(List<String> args) {
  final moneyBank1 = Bank(20, "12", "Ali");
  final moneyBank2 = Bank(35, "12", null);
  print(moneyBank1 + moneyBank2); //normalde cusstom operator oluşturmasak buradaki işlem hata verirdi fakat custom op. oluşt. için hata vermedi.
  print(moneyBank1 == moneyBank2);

}
//musteri banka sınıfından iki kişinin paralarının toplamını istiyor.
//banka müsterilerinden id si aynı olanlar aynı musteri olmalıdır.


class Bank{
  final int money;
  final String id;
  final String? name;

  Bank(this.money, this.id, this.name);


  int operator +(Bank newBank){         //burada custom operator oluşturduk toplama istedigimiz için parantezden önce + koyduk.
    return this.money + newBank.money;
  }
  bool operator ==(Object obje){  //burada da == operatorunu kendimize göre customize ettik .
    return obje is Bank && obje.id == id;
    
  }

}