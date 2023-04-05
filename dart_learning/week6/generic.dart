// ignore_for_file: public_member_api_docs, sort_constructors_first

void main(List<String> args) {
  final user = User(data: "a");   //mesela burada "a" yazdım string oldu, düz rakam yazsam int olur oldukça kullanışlı bir metod
  print(user);
}

class User<T> {
  T data;           //burada T kullanımı kendi istedigimiz string mi int mı neyse onu main de kendimizin belirtmesine yarıyor.
  User({
    required this.data,
  });
}
