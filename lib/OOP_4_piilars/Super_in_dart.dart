class Parent {
  String? name;

  Parent.named({this.name});
  void display() {
    print('Name: $name');
  }
}

class Child1 extends Parent {
  String? childName;
  String? name;

  Child1({this.name, this.childName}) : super.named(name: name);

  void display() {
    super.display();
    print('Name: $name, Child Name: $childName');
  }
}

void main() {
  Child1 child1 = Child1(name: 'Ayan', childName: 'Haseeb');
  child1.display();
  Manager manager = Manager.ayan1();
}
class Employee {
  // Named constructor
  Employee.ayan() {
    print("Employee named constructor");
  }
}

class Manager extends Employee {
  // Named constructor
  Manager.ayan1() : super.ayan() {
    print("Manager named constructor");
  }
}