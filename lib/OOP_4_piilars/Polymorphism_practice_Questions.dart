// extend me compulsory hota hy abstract methods or parent class ka  code mil jata hy child ko like Dog ko mila
// showName

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
    print('My  bird pet name is $name');
  }
}

// polymorphism via function parameters
void show(Animal animal) {
  animal.type();
}

void main() {
  show(Dog());
  show(Bird());
  Animal a = Dog();
  Animal b = Bird();
  b.showName('Faizan');
  a.showName('Umair');
}
