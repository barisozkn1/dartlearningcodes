
void main() {
  // musteri adi var, yasi var bla bla bla
  //class yapısı bildigimiz sınıflama, kümeleme işlemi

  int? newNoney;        //buradaki ? degeri verilmeyen obje de null sonucunu verir. Bu durumlarda aşağıdaki gibi bir yöntem izlenebilir.
  if (newNoney != null)  { //yani yukarıdaki soru işareti gelecek işlemlerin dataların olmayabilecegini de söylemiş olursun.
    print(newNoney + 50);
  }else {
    print(10 + 10);
  }//müşteri dedi ki cevap gelmezse ana deger olarak 10 ata

  //bankaya 3 adet müşteri geliyor birinin 100 tlsi var digerinin hesabı hiç yok digerinin 0 tlsi var
  //hesabı olmayana gel hesap acalım, 0 tlsi olanı kov, 100 tlsi olana musterim hg de.
  //yeni bir method olsun bu method da hesabı olmayanları yok sayalım.
  //para verdiklerimizi ekranda true yazalım

  print("-----------------");
  List<int?> customersMoney = [100, null, 0]; //mesela buradaki soru işareti de yukarıda anlattıgımız kullanıma bir örnek daha
  for (var item in customersMoney) { //Bir nesnenin null olması demek bu nesnenin hiç olmayacagı anlamına gelir.
    if (item != null){
      if (item > 0){
        print("Beyfendi hoşgeldiniz.");
      }else{
        print("Siktir git buradan fakir");
      }

    }else {
      print("Haydi hesap acalim.");
    }

    //-------
    bool result = controlMoney(item) == null ? false : true; //bu kodun sonundaki şeylerin anlamı == null ? buradaka bunu kontrol et diyor,
    print(result);                                           //eger null ise false, degilse true döndür anlamına geliyor, yani bu yöntem short if olarak geçer.
  }  
    print("-----------------------" * 2);
    User user1 = User("Baris", 15, age: 21, city: "Van");  //classların bu işlemlerini main içinde yapıyoruz. Class ise main dışında oluşturuyoruz.
    //User user2 = User("veli", 20, null, null);
    final user3 = User("ahmet", 50); //opsiyonel parametre kullanıldıgında ana istenilenleri gösterir istersen age: 15 vs yazıp yan şeyleri ekleyebilirsin.
    print(user1.name);
                                                           
}
  int? controlMoney(int? money) {
    if (money != null && money > 0){
      return money;
    }
    //if (money == null || money == 0){
    //    return null;
    //}
  }
  //adı olmak zorunda
  //parası olmak zorunda
  //yasını vermeyebilir
  //şehrini söylemeyebilir

  class User {
    //ilk olarak özellikleri tanımla 
    late final String name; //buradaki late anlamı bu deger sonradan dolacak ilk başta anlamı yok sonradan olacak mantıgı.
    late final int money;
    late final int? age;
    late final String? city;

    User(String name, int money, {int? age, String? city}){ //burada city ve age tarafındaki süslü parantez opsiyonel oldugunu belirtiyor.
      this.name = name;  //burada this. kullanım sebebi class içindekinden bahsetmek için yani classtakilere eşitlemek için this. kullanılıyor.
      this.money = money;
      this.age = age;
      this.city = city;
    }

}