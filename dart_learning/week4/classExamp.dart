
void main() {
  haliSaha user1 = haliSaha("baris", 42, "Midfielder", id: '213');
  print(user1.position);
  print(user1._id); //burada evet
  
}
//kişilerin id bilgisini alalım fakat sadece sınıf içinden erişebilelim id lerine yani private olsun
class haliSaha {
  late final String name;
  late final int shoeNo;
  late final String position;

  late final String _id; //_id burada private olarak kullanılmasına yardımcı oluyor fakat bu dosya içerisindeki herhangi bir kişi bu id yi görebilir.
  //eğer bunu göstermek istemezsek

  haliSaha(String name, int shoeNo, String position, {required String id}){
    this.name = name;
    this.shoeNo = shoeNo;
    this.position = position;
    _id = id;
  }
}

//daha kısayolu 2. kısmın

//class haliSaha2 {
//  late final String name;
//  late final int shoeNo;
//  late final String position;

//  haliSaha2(this.name, this.shoeNo, this.position); // bu da daha kısa versiyonu direkt eşitlemesini sağlar.
//}