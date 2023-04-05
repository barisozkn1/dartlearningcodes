
void main() {
  final int classDegree = 1;
  bool isSucces = false;
  const succesValueHigh = 2;
  switch(classDegree){

    case succesValueHigh:
      print("Bravo");
      isSucces = true;
      break;
    case succesValueHigh:
      print("Olur.");
      isSucces = true;
      break;
    case succesValueHigh:
      print("Yeterli");
      isSucces = true;
      break;
    default:
      print("Basarisiz.");
      isSucces = false;
  }
  print("Beyfendi cocugunuzun sonucu: $isSucces");


  // magazaya gelenlerden baris veya barkin olan varsa bravo yazdır.
  String name = "Baris";
  const String specialUser1 = "Baris";
  const String specialUser2 = "Barkin";
  switch(name){

    case specialUser1:
    case specialUser2:
      print("Bravo.");
      break;
    default:
      print("Istedigimiz sonuc alinamadi.");
  }

}