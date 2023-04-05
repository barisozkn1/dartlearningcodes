
void main(List<String> args) {
  final user = _User("veli", age: 21);

  //musterinin yasının 18 den kucuk kontrolünü yapar mısın
  //if ((user.age ?? 0) < 18){} //bu kontrol için bir senaryo bir tane daha var

  if (user.age is int){ //burada is kalıbı ile int mı degil mi kontrolü yapıyoruz 
    if(user.age! < 18){ //user.age! buradaki ünlem kesinlik anlamı katıyor zaten deger int ise buraya girer o zaman kesinlik kullanabılırız burada.
      print("evet kucuk");
      user.updateMoneyWithString("TR");
    } else{
      user.updateMoneyWithNumber(15);
    }
  }else{
    print("herhangi bir yas degeri girilmemistir.");
  }

  //kullanıcılarımın parası var ama paranın tipi degisken olabilir.
  //parasi olan adamın o parametresi bir isim de olabilir, deger de olabilir.
  //tr yazacak ya da 15 yazabilir.
  //daha sonra ekranda göster.
  final _newType = user.moneyType is String ? (user.moneyType as String) : "";
  print(_newType + "A");
  //print((user.moneyType as String));
}

class _User {
  final String name;
  int? age;

  dynamic moneyType;

  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
    
  }
}

