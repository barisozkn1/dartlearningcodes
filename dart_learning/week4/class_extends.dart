
void main() {
  final userNormal = User("vb", 15);
  final usersSpecial = SpecialUser("baris", 12312, 123, 30);
  
  userNormal.sayMoneyWithCompanyName();
  usersSpecial.sayMoneyWithCompanyName(); 
  usersSpecial.calculateMoney;
  print("indirimli hali ${usersSpecial.calculateMoney}");

}
  abstract class IUser {  //soyut sınıfın amacı birçok sınıfı gruplandırıp ortak metodları ana classlarda yapmamızı sağlar. 
    final String name;    //name , money diğer tum sınıflarda da oldugu için soyut sınıf yardımı ile bunu gruplandırdık.
    final int money;      ////abstract class kavramı hepsinde olması gereken bir durumda soyut sınıf oluşturma kavramıdır.

    IUser(this.name, this.money);
    void sayMoneyWithCompanyName(){
      print("Ahmet- $money paraniz vardir");
    }
  }

//paralarını görebilmelerini istiyorum benim banka ismimle birlikte.
class User extends IUser{
  final String name;
  final int money;

  User(this.name, this.money):super(name, money);
  //void sayMoneyWithCompanyName() {
  //  print("Ahmet - $money tl paraniz vardir.");
  //}
}


class BankUser extends IUser{
  //final String name; //bunları extends ettigimizden dolayı burada ihtiyacımız yok
  //final int money;
  final int bankingCode;
  
  BankUser(String name, int money, this.bankingCode):super(name, money);
  void BankSpecialLogic(){
    print(money);
  }
}

class SpecialUser extends IUser{
  //final String name;
  //final int money;
  final int bankingCode;
  final int disccount;

  SpecialUser(String name, int money, this.bankingCode, this.disccount):super(name, money);
  
  int get calculateMoney => money - (money ~/ disccount);

}
