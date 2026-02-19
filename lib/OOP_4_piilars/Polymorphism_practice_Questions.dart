// extend me compulsory hota hy abstract methods or parent class ka  code mil jata hy child ko like Dog ko mila
// showName
//abstract method is compulsory and concrete method is not
// in extend parent class ka code inherit hojata lin interface me nhi isslia hrr class ka alg code likhna hota

abstract class Animal {
  //Concrete method
  void showName(String name) {
    print('My pet name is $name');
  }

  // abstract method
  void type();
}

class Dog extends Animal {
  @override
  void type() {
    print('this is Dog');
  }
}

class Bird extends Animal {
  @override
  void type() {
    print('this is Bird');
  }

  @override
  void showName(String name) {
    print('My pet name is $name');
  }
}

// polymorphism via function parameters
void show(Animal animal) {
  animal.type();
}

class Vehical {
  void showName(String name, String type) {
    print('My vehical name is $name and type is $type');
  }
}

class Car extends Vehical {}

class Bike extends Vehical {
  @override
  void showName(String name, String type) {
    print('My  name is $name and type is $type');
  }
}

void Show(Vehical Vehicaltype) {
  Vehicaltype.showName('sonata', 'car');
}

// with abstract class
abstract class Vehical1 {
  //abstract methods
  void showName(String name, String type);

  void color();
}

class Car1 extends Vehical1 {
  @override
  void showName(String name, String type) {
    print('My vehical name is $name and type is $type');
  }

  @override
  void color() {
    print('color is black');
  }
}

class Bike1 extends Vehical1 {
  @override
  void showName(String name, String type) {
    print('My vehical name is $name and type is $type');
  }

  @override
  void color() {
    print('color is red');
  }
}

void show1(Vehical1 vehical1) {
  vehical1.color();
}

void main() {
  show(Dog());
  show(Bird());
  Animal a = Dog();
  Animal b = Bird();
  b.showName('Faizan');
  a.showName('Umair');
  print('- - - - - - -');
  // another
  Vehical vehical = Car();
  vehical.showName('corolla', 'car');
  Show(Car());
  Show(Bike());
  print('- - - - - - -');
  Vehical1 veh = Car1();
  veh.showName('corolla', 'car');
  show1(Car1());
  Vehical1 veh1 = Bike1();
  veh1.showName('honda', 'bike');
  show1(Bike1());
}
