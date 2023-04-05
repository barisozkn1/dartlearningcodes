
void main() {}
  
abstract class IStudent { 
  final String name;
  final int age;

  int? schoolId; //burada bir tane schoolId tanımladık aşağıdakilerde de tanımlaman gerekir.
  IStudent(this.name, this.age); 
}

class Student implements IStudent{  //implement kullandıgımızda tüm classlar birbirinin aynısını olacak demek ve kendi içerisinde bu metodları dolduracak.
  final String name;
  final int age;

  Student(this.name, this.age);
  
  @override
  int? schoolId;
}

class Student2 implements IStudent{
  final String name;
  final int age;

  Student2(this.name, this.age);
  
  @override
  int? schoolId;
}