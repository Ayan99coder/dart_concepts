void main() {
  Animal animal = Animal();
  animal.showName();
  Dog dog = Dog();
  dog.showName();
  Cat cat = Cat();
  cat.showName();
  Horse horse = Horse();
  horse.showName();
  Animal animal1 = Dog();
  animal1.showName();
  Animal animal2 = Cat();
  animal2.showName();
  Animal animal3 = Horse();
  animal3.showName();

  // abstract class
  PaymentProcess(Jazzcash());
  PaymentProcess(easypaisa());
  // abstract class
  showVehical(Car());
  showVehical(Bike());
}

class Animal {
  void showName() {
    print('this is Animal');
  }
}

class Dog extends Animal {
  @override
  void showName() {
    print('this is Dog');
  }
}

class Cat extends Animal {
  @override
  void showName() {
    print('this is Cat');
  }
}

class Horse extends Animal {
  @override
  void showName() {
    print('this is Horse');
  }
}

//abstract class
abstract class Payment {
  void payment(double amount);
}

class Jazzcash extends Payment {
  @override
  void payment(double amount) {
    print('Jazzcash payment of $amount');
  }
}

class easypaisa extends Payment {
  @override
  void payment(double amount) {
    print('easypaisa payment of $amount');
  }
}

void PaymentProcess(Payment payment) {
  payment.payment(1000);
}

abstract class Vehical {
  void showName();
}

class Car extends Vehical {
  @override
  void showName() {
    print('this is Car');
  }
}

class Bike extends Vehical {
  @override
  void showName() {
    print('this is Bike');
  }
}

void showVehical(Vehical vehical) {
  vehical.showName();
}
