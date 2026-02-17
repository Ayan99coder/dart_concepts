void main() {
  var macbook = MacBook();
}

class Laptop {
  Laptop() {
    print("Laptop constructor");
  }
}

class MacBook extends Laptop {
  MacBook() {
    print("MacBook constructor");
  }
}

//Inheritance Of Constructor With Parameters In Dart
class Laptop1 {
  Laptop1(String name, String color) {
    print("Laptop constructor");
    print("Name: $name");
    print("Color: $color");
  }
}

class Macbook extends Laptop1 {
  Macbook(String name, String color) : super(name, color) {
    print("MacBook constructor");
  }
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class Student extends Person {
  int rollNumber;

  Student(String name, int age, this.rollNumber) : super(name, age);
}

//Inheritance Of Constructor With  named Parameters In Dart
class Person1 {
  String? name;
  int? age;

  Person1({this.name, this.age}) {
    print('i am a person1');
    print('name : $name');
    print('age : $age');
  }
}
class Student1 extends Person1 {
  int? rollNumber;

  Student1({String? name, int? age, this.rollNumber})
      : super(name: name, age: age) {
    print('i am a student1');
    print('name : $name');
    print('age : $age');
  }
}
//Calling Named Constructor Of Parent Class In Dart

