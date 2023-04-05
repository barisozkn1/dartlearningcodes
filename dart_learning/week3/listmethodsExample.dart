
void main() {
  List<String> userNames = ["ali", "veli", "baris", "kemal"];
  userNames.contains("veli"); //bu .contains kodu ise listenin içinde parantez içine ne yazarsan o var mı diye kontorl sağlar.

  for (var item in userNames) {
    if (item == "baris"){
      print("var");
    }
    
  }
}