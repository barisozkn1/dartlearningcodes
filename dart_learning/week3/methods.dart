
void main() {
  //final int userMoney = 5;   
  //controlUserMoney(userMoney, 0);

  //final int userMoney2 = 15;
  //controlUserMoney(userMoney2, 20);    //burada parantez içindeki deger adamın kontrol etmek istedigi değişken. Yani parası 20 tl den fazla ise
  //para var yoksa para yok printler



  final int newUserMoney = 50;   //bu 2. fonksiyon işlemi ile birlikte 
  int result = convertToDolar(newUserMoney);
  print(result);

  final newResult = convertToStandartDolar(100, dolarIndex: 16);  //aşağıda süslü içindeki standart dolar degeri, burada  ikinci olan ise güncellenmiş,
  final newResult2 = convertToDolar(60);                          //dolar degeri bunuda ops. kullanılan parametreyi yazıp sonra iki nokta koyup degerini
  print("1. sonuc: $newResult");                                  //yazarak saglanır.(Örn: dolarIndex: 16 demiş).
  print("2. sonuc: $newResult2");


}
//void controlUserMoney(int money, int minimumValue) {  //burada parantez içindeki parametredir. Bu parametre sayesinde birden fazla kullanım için kolaylık sağlanıyor

  //if (money > minimumValue){
  //  print("Para var.");
  //}else{
  //  print("Para yok.");
  //}

//}

int convertToDolar(int usMoney){
  return usMoney ~/ 13;

}

int convertToStandartDolar(int usMoney , {int dolarIndex = 13}){  //buradaki süslü içindeki işlem opsiyonel bir durum oldugunda kullanılır.Yani kullanıcı dolar,
  return usMoney ~/ dolarIndex;                                   // standart kaldıgı süre boyunca normal işlem yapılsın fakat dolar degişirse kendisi de 
                                                                  //güncelleme atabilmesini sağlayacak şekilde işlem sağlar.

}



