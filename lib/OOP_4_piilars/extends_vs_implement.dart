//implements
 abstract class Laptop {
  turnOn(String name) {
    print('$name turned on');
  }

  turnOff() {
    print('Laptop turned off');
  }
  void name();
}

class MacBook implements Laptop {

  @override
  turnOn(String name) {
    print('$name turned on');
  }

  @override
  turnOff() {
    print('MacBook turned off');
  }
  @override
  void name() {
    print('MacBook');
  }
}
void showName(Laptop laptop){
  laptop.name();
}
// extends
 abstract class Vehical {
  void showName(String name, String type) {
    print('My vehical name is $name and type is $type');
  }
void color();
}

class Car extends Vehical {
  @override
  void color() {
    print('color is black');
  }
}

class Bike extends Vehical {
  @override
  void showName(String name, String type) {
    print('My  name is $name and type is $type');
  }
  @override
  void color() {
    print('color is red');
  }
}

void Show(Vehical Vehicaltype) {
  Vehicaltype.color();
}
void main() {
  var macBook = MacBook();
  macBook.turnOn('m1');
  macBook.turnOff();
  showName(MacBook());

  Vehical vehical = Car();
  vehical.showName('corolla', 'car');

  Show(Car());
  Show(Bike());

}