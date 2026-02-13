class Person {
  String name;

  Person(this.name) {
    print("Person constructor called");
  }

  void greet() {
    print("Hello, my name is $name");
  }
}

class Student extends Person {
  int rollNo;

  Student(String name, this.rollNo) : super(name) {
    print("Student constructor called");
  }

  @override
  void greet() {
    super.greet();
    print("Name: $name, Roll No: $rollNo");
  }
}

class Teacher extends Person {
  String subject;

  Teacher(String name, this.subject) : super(name) {
    print("Teacher constructor called");
  }

  @override
  void greet() {
    super.greet();
    print("Name: $name, Subject: $subject");
  }
}

void main() {
  Student s1 = Student("Ayan", 101);
  s1.greet();
  Teacher t1 = Teacher("Mam Ghulam Fatima", "App development");
  t1.greet();
}
