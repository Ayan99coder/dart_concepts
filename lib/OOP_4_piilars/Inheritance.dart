void main(){
  final std = Student();
  std.name = 'Ayan';
  std.address = 'Vehari';
  std.display();
  std.stdname = 'Ayan as a std';
  std.stdaddress = 'Vehari std address';
  std.stddisplay();

  final toyota = Toyota();
  toyota.model = 'Toyota';
  toyota.color = 'Red';
  toyota.display();
  toyota.price = '1000000';
  toyota.display();

  final model3 = Model3();
  model3.name = 'Toyota';
  model3.price = 1000000;
  model3.color = 'Red';
  model3.display();

  final rectangle = Rectangle();
  rectangle.diameter1 = 10;
  rectangle.diameter2 = 20;
  print(rectangle.area());

  final triangle = Triangle();
  triangle.diameter1 = 10;
  triangle.diameter2 = 20;
  print(triangle.area());


}
// Single inheritance in dart
class Person{
  String? name;
  String? address;
  void display(){
    print('Name: $name, Address: $address');
  }

}
class Student extends Person{
  String? stdname;
  String? stdaddress;
  void stddisplay(){
    print('Name: $stdname, Address: $stdaddress');
  }

}
class Car{
  String? model;
  String? color;
  void display(){
    print('Model: $model, Color: $color');
  }

}
class Toyota extends Car {
  String? price;
  void toyotadisplay(){
    print('Price: $price');
  }

}

// Multilevel inheritance in dart
class Cars{
  String? name;
  double? price;


}
class Toyota1 extends Cars {
  String? color;
  @override
  void display(){
    print('Name: $name, Price: $price, Color: $color');

  }

}
class Model3 extends Toyota1{
  void display() {
    super.display();
    print("Color: ${color}");
  }
}

// Heirarchical inheritance in dart
class Shape {
  double? diameter1;
  double? diameter2;
}

class Rectangle extends Shape {
  double area() {
    return diameter1! * diameter2!;
  }
}

class Triangle extends Shape {
  double area() {
    return 0.5 * diameter1! * diameter2!;
  }
}