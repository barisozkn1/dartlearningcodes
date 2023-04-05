
void main() {
  final customerMouse = Mouses.a4;
  print(customerMouse.index);
  print(customerMouse.name);
  //switch (customerMouse) {

  //  case Mouses.magic:

  //  case Mouses.apple:

  //  case Mouses.logitech:

  //  case Mouses.a4:

  //}

  //if (customerMouse == Mouses.a4) {} //hem hızlı hem performans konusunda daha iyi oluyor enum

}
//enum demek sınıflandırma demek.

enum Mouses{ //enum: value tutan bir class yapısıdır, tam sayı sınıflandırma işlemidir
  magic, 
  apple,
  logitech,
  a4,
}