
void main() {
  
  String userName = "Baris";

  final int bankMoney = 100;    //burada final komutu bu tanımlanan şeyi dokunulmaz yapıp değiştirilmesini engelliyor.Değişkeni sabitler yani.
  const String bankName = "Enai Bank"; //bu const komutu da final ile aynı işlevi sağlıyor yani değişkeni sabitliyor.

  var userName2 = "baris21";  //burada var komutu tipini her seferinde belirtmek yerine direkt kullanılmasını sağlıyor.
  var userName2Money = 15;
  //print(userName2Money);

//  ---
//Bir iş örneği

const String bankaName = "VB BANK";

const String user1 = "bank1Musteri";
const double user1Money = 100.00;

const String newUser = "bank2Musteri";
int user2money = 500;

user2money -= user1Money.toInt();  //buradaki to.Int() komutu double olarak tanımlanan degeri inte çeviriyor bir nevi.
//print("User 2 Money: $user2money");


//Odev2
//Benim bir halısaham var 100 kapasiteli
//saat 10 da 20 kişilik bir müşteri1 grup maç yapacak ve 20 kişi kesin gelecek
//saat 10 da müşteri2 gelip bana 50 kişilik yer ayırtacak
// bu işlem sonrasında benim halı saha kapasitem kaç kalmıştır.

//Hint
//int sum = musteri1 + musteri2
//print total(const) - sum

const haliSahaName = "ENAILER HALI SAHA";
final int haliSahaKapasite = 100;
int musteri1 = 20;
int musteri2 = 50;
int toplam = musteri1 + musteri2;
int total = haliSahaKapasite - toplam;
print("Hali Sahada kalan kapasite: $total");


}