// ignore_for_file: public_member_api_docs, sort_constructors_first

void main(List<String> args) {
  IUser user = Turk();
  user.SayName();           //yani bu örnek kullanım polimorphisim çok çeşitiliği gösteriyor.
                            //ortak bir kümeden oldugu zaman kullanım saglanıyor aksi halde işe yaramaz bu yöntem
  user = English();         //ortak metodlar, ortak kümeler farklı classlarda durumunda iş yapıyor baya
  user.SayName();
}

abstract class IUser {
  final String name;

  IUser(this.name);
  void SayName() {
    
  }
}

class Turk implements IUser{
  @override
  // TODO: implement name
  String get name => "baris";

    @override
  void SayName() {
    // TODO: implement SayName
    print("Merhaba, $name");
    print("Maç izlemeye gidelim mi?");

  }
  
}

class English implements IUser{
  @override
  // TODO: implement name
  String get name => "Adam";

    @override
  void SayName() {
    // TODO: implement SayName
    print("welcome to ur home $name");
    print("let's meet with our friends in Oxford");
  }
  
}
