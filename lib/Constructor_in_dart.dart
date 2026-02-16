// No named just parameterized constructor


import 'package:dart_concepts/Super_Constructor.dart';

void main() {
  // No named just parameterized constructor
  Person person = Person('Ayan', 22, 1);
  person.display();
  //named and parameterized constructor but  optional parameter
  Employee emp = Employee(name: 'Ayan');
  emp.display();
  //named constructor and compulsory parameter
  Teacher teach = Teacher(name: 'Ayan', age: 21, id: 1);
  teach.display();
  //, id: id)
}
class Person{
  String? name;
  int? age;
   int? id;

   Person(this.name,this.age,this.id);

   void display(){
     print('Name: $name, Age: $age, Id: $id');
   }
}
class Employee{
  String? name;
  int? age;
  int? id;
  Employee({this.name,this.age,this.id});
  void display() {
    print('Name: $name, Age: $age, Id: $id');
  }
}
class Teacher{
String? name;
int? age;
int? id;
Teacher({ required this.name, required this.age,required this.id});
void display() {
  print('Name: $name, Age: $age, Id: $id');
}

}
//Optional named constructor with public properties

class People {
  String? name;
  int? age;

  People({this.name, this.age});
}

//Optional named constructor with public properties
class PrivatePeople {
  String? _name;
  int? _age;

  String? get name => _name;

  int? get age => _age;

  PrivatePeople({String? name, int? age}) {
    _name = name ?? '';
    _age = age ?? 99;
  }
}

// named constructor with private properties
class PrivatePeople1 {
  final String _name;
  final int _age;

  PrivatePeople1({required String name, required int age})
      : _name = name,
        _age = age;

  String get name => _name;

  int get age => _age;
}

//named constructor with public properties
class PublicPeople1 {
  String name;
  int age;

  PublicPeople1({required this.name, required this.age});
}

class PublicPeople2 {
  String name;

  int age;

  PublicPeople2(this.name, this.age);
}

class PrivatePeople2 {
  final String _name;
  final int _age;

  PrivatePeople2(this._name, this._age);

  String get name => _name;

  int get age => _age;
}
