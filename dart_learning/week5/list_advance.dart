// ignore_for_file: public_member_api_docs, sort_constructors_first

void main(List<String> args) {
  final model = carModel(category: CarModels.bmw, name: "Bmw x5", money: 1000000, isSecondHand: false);
  final carItems = [
    carModel(category: CarModels.bmw, name: "Bmw 7", money: 35000000, isSecondHand: false),
    carModel(category: CarModels.toyota, name: "Corolla", money: 400000),
    carModel(category: CarModels.yamaha, name: "r6", money: 300000, isSecondHand: false),
    carModel(category: CarModels.range, name: "sport range", money: 15000000),
    carModel(category: CarModels.audi, name: "a6", money: 12000000, isSecondHand: false),
  ];

  final resultCount = carItems.where((element) => element.isSecondHand == false).length;  //buradaki any metodu listenin içinde neyi aradgımızı bulmaya yarıyor.
  //where kullanırsak da kaç tane oldugunu söyle anlamına geliyor
  print(resultCount);  //3 tane false oldugunu belirtti.
  final newCar = carModel(category: CarModels.range, name: "sport range", money: 15000000);
  final isHaveCar = carItems.contains(newCar); //contains sayesinde elimizde benzer araba var mı diye kontrol sağladık
  if (isHaveCar){
    print("elimizde var");
  }else{
    print("patron yok alalim");
  }

  final resultBmwMore2k = carItems.where((element) => element.category == CarModels.bmw && element.money > 2000000);
  print(resultBmwMore2k); //aşağıdaki toString yapısını kullanmasaydık print sonucu İnstance of Car diye gözükürdü.
  print("----------------");

  final carNames = carItems.map((e) => e.name).join(",");  //buradaki metod sayesinde arabaların isimlerini yan yana printleyebildik.
  print(carNames);

  try {
    final mercedesCar = carItems.singleWhere((element) => element.category == CarModels.mercedes);
    print(mercedesCar.name);
  } catch (e) {    //unutma catchin amacı hatayı haber vermektir catche kod yazıpda çözüm sağlamaya çalışmak mantıklı değil
    print("araba yok abi");
  } finally{
    print("bu finally de her durumda en son olarak çalişir");
  }
  print("---*****-------*******-******-");
  carItems.removeWhere((element) => element.category == CarModels.bmw || element.money > 30000000); //removewhere komutu ile istedigimiz şeyin silinmesini sagladık.
  print(carItems);

}


//benim bir arabalar sınıfım olacak
//model, isim ve parası kesin olacak, şehri olmayacak, ikinci el durumu eger musteri söylemezse
//her urun ikinci el kabul edilecek
//benim 5 tane arabam olacak
//benim bu arabalarımın kaç tanesi ikinci el
//yeni bir araba geldi bu bizde var gibi hissediyorum dogru mu

//bana bmw olan ve moneysi 20 den büyük olanların ismini söyler misin

//sadece isimleri bana yan yana göster diye istedi

//benim elimde mercedes var mı kontrol et, bunu try catch yapısı ile kontrol ettik

//bmw ve fiyatı 3k üstü olanları sil
class carModel {
  final CarModels category;
  final String name;
  final double money;
  String? city;
  bool isSecondHand;
  carModel({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
  });

  bool operator == (Object other) {
    if (identical(this, other)) return true;

    return other is carModel &&
          other.category == category &&
          other.name == name &&
          other.money == money &&
          other.city == city &&
          other.isSecondHand == isSecondHand;
  }
  int get hashCode {
    return category.hashCode ^ name.hashCode ^ money.hashCode ^ city.hashCode ^ isSecondHand.hashCode;
  }
  @override
  String toString() {
    return "$name - $money";
  }

}

enum CarModels{bmw, yamaha, toyota, audi, range, mercedes}
