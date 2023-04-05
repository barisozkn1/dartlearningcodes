
void main() {
  //musteri geldi adı ahmet parası 20
  
  Map<String, int> users = {'ahmet':20, 'baris':100}; //Maplerde kullanım 2 tane keyle olur <String, int> örnekte yer aldıgı gibi mesela

  //musteri ahmetin ne kadar parası var
  print("Ahmetin parasi ${users['ahmet']}");
  print("Barisin parasi: ${users["baris"]}");

  //musteri kimler var senin elinde dese 

  for (var item in users.keys){           //iki farklı yöntem biri for in ile hem keyleri hem valueleri döndürme
    print("${item} - ${users[item]}");    //.keys kodu anahtar yani burada isimleri, .values ise değerleri yani burada paralarını göstertiyor.
  }

  print("yukaridaki for in  ----------------------- aşağidaki düz for");

  for (var i = 0; i < users.length; i++){
      print("${users.keys.elementAt(i)} - ${users.values.elementAt(i)}");     //burada da düz for ile döndürme, burada .elementAt(i) kodu döndürmeyi sağlıyor.
  }
  print("***********************");
  //benim bankam var müşterilerimin birden fazla hesabı olabilir.
  //ahmet bey 3 hesabı var sırasıyla 100, 300, 200 
  //mehmet bey 2 hesabı var 30, 50
  //veli bey 1 hesap 30

  //adamların hesaplarını kontrol et herhangi bir hesapta 150 tl den fazla olan varsa krediniz hazır de.

  //final Map<String, List<int>> bankAccounts = {"ahmet":[100,300,200], "mehmet":[30,50], "veli":[30]}; //böyle de yazılabilir ya da aşağıdaki gibi de
  
  final Map<String, List<int>> bankAccounts = { //yukarıdaki gibi de yazılabilir.
    "ahmet":[100,300,200]
  };
  bankAccounts["mehmet"] = [30,50];
  bankAccounts["veli"] = [30];
  
  for (var item in bankAccounts.keys) {
  //ilk for bankanın tüm elemanları için
    for (var money in bankAccounts[item]!) {
      //bu for da userın hesaplarını dolaşıyor
      if (money > 150) {
        print("Kredin hazir.");
        break;
      }
      
    }
  }
  //bankadaki musterilerin toplam mevlasını merak ediyorum.
  print("------------");

  for (var name in bankAccounts.keys) {
    //bankAccounts[name]! bunun anlamı musterinin hesapları demek
    int result = 0;
    for (var money in bankAccounts[name]!) {
      result = result + money;
    }
    print("$name senin toplam paran = $result"); //${bankAccounts[item]} bu kullanım birden fazla degeri olanlar için, $result bu ise tek deger için
    
  }


}