
void main() {
  List<int> moneys = [100, 110, 500, 200, 300];
  print("musteri 1 parasi: ${moneys[0]}");
  moneys.sort(); //sort kodu küçükten büyüğe doğru sıralamayı sağlıyor.
  print(moneys);
  moneys.add(5); //bu kod eleman eklettiriyor.
  moneys.insert(2, 300); //insert ise listede istedigin indekse istedigin degeri yerleştiriyor.
  print(moneys);

  final List<int> newMoneys = [12, 63, 25, 42, 50]; //final komutu normalde dokunulmazlık saglardı, obje için sağlar yani listenin içindeki,
  //elemanlara yine istediğin işlemi yapabilirsin.

  newMoneys.add(7);
  newMoneys.clear(); //listenin içini boşaltır.
  print(newMoneys);


  List<double> customerMoney = List.generate(100, (index) { //List.generate istediğim miktarda liste olusturmamıza yardımcı olur, 100 yazar yer uzunlugu listenin.
    return index + 5;
  });
  print(customerMoney);
  


  List<int> custMoney = [100, 30, 40, 60];
  custMoney.sort();
  for (int i =0; i <custMoney.length; i++){
    print("musteri parasi: ${custMoney[i]}");
    if (custMoney[i]>35){
      print("Kredi alabilirsiniz.");
    }else{
      print("Bye");
    }
  }





}