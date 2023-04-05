
void main(List<String> args) {
    if ("ali".isAdmin()){
      print("object");
    }else {
      print("Not equal");
    }

    String? name;

    name.isAdmin();
}

extension StringUserCheckExtension on String?{ //burada da extension özelligini stringler eşit mi degil mi diye örnek olarak kullandık
  bool isAdmin(){
    return this?.toLowerCase() == "admin".toLowerCase();
  }
}