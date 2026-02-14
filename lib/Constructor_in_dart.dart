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