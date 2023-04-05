
void main() {
  int money1 = 7;

  if (money1>10) {
    print("Sen zenginsin abe.");
  }else {
    print("Sen zengin degilsin abe.");
  }

  String musteri = "Baris";
  const int musteriMoney = 10;
  int kalanPara = musteriMoney - 20;
  if (kalanPara > 0){
    print("$musteri Bey, lütfen sıra alınız."); 
  }else{
    print("$musteri Bey, kredinizi ödeyiniz.");
  }


  final String ahmetCompany = "Ahmet";
  final String mehmetCompany = "mehmet";
  final String veliCompany = "veli";
  final String kxCompany = "kx";
  final String xCompany = "x";

  const companyLenght = 6;
  String results = "";

  if (ahmetCompany.length > companyLenght){
    results += ahmetCompany;
  }
  if (mehmetCompany.length > companyLenght){
    results += mehmetCompany;
  }
  if (veliCompany.length > companyLenght){
    results += veliCompany;
  }
  if (kxCompany.length > companyLenght){
    results += kxCompany;
  }
  if (xCompany.length > companyLenght) {
    results += xCompany;
  }

  if (results.length == 0) {
    print("Patron istedigin koşula uygun isim bulamadik.");
  }else{
    print(results);
  }

  
}