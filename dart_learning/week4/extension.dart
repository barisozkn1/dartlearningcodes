
void main() {
  final customerMouse = Mouses.a4;
  print(customerMouse.index);
  print(customerMouse.name);
  print("------------");

  if (customerMouse.isCheckName("a4")){
    print("aa");
  }

}
//enum demek sınıflandırma demek.

enum Mouses{ //enum: value tutan bir class yapısıdır, tam sayı sınıflandırma işlemidir
  magic, 
  apple,
  logitech,
  a4,
}

extension MousesSelectedExtension on Mouses{ //extension bir uzantı gibi düşünülebilir.
  bool isCheckName(String name){
    return this.name == name;
  }
}