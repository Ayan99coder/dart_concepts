void main() {
  Laptop book = Macbook();
  book.turnOn();
  book.turOff();
  book = eliteBook();
  book.turnOn();
  book.turOff();

  Rectangle rect = Rectangle(length: 5, width: 10);
  Show(rect);

  Student std = Student(marks1: 10, marks2: 20, marks3: 30);
  show1(std);
}

abstract class Laptop {
  void turnOn();

  void turOff();
}

class Macbook implements Laptop {
  @override
  void turnOn() {
    print('Macbook turned on');
  }

  @override
  void turOff() {
    print('Macbook turned off');
  }
}

class eliteBook implements Laptop {
  @override
  void turnOn() {
    print('eliteBook turned on');
  }

  @override
  void turOff() {
    print('eliteBook turned off');
  }
}

abstract class Area {
  void area();
}

abstract class Parameter {
  void parameter();
}

class Rectangle implements Area, Parameter {
  double length;
  double width;

  Rectangle({required this.length, required this.width});

  @override
  void area() {
    print('Area of rectangle is ${length * width}');
  }

  @override
  void parameter() {
    print('Parameter of rectangle is ${2 * (length + width)}');
  }
}

void Show(Rectangle rect) {
  rect.area();
  rect.parameter();
}

abstract class Calculator {
  int total();

  double average();
}

class Student implements Calculator {
  int marks1, marks2, marks3;

  Student({required this.marks1, required this.marks2, required this.marks3});

  @override
  int total() {
    return marks1 + marks2 + marks3;
  }

  @override
  double average() {
    return total() / 3;
  }
}

void show1(Student std) {
  print('Total marks is ${std.total()}');
  print('Average marks is ${std.average()}');
}
