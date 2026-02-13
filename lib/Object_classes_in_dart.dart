void main() {
  Person person = Person();
  person.name = 'Ayan';
  person.age = 22;
  person.showDetails();
  Person person1 = Person();
  person1.name = 'Ayan';
  person1.age = 22;
  person1.showDetails();
  Student student = Student('Ayan', 22, 'A+');
  student.showdetail();
  Student student1 = Student('Ayan', 22,'A+');
  student1.showdetail();
  student1.updateGrade('B');
  student1.showdetail();
}

class Person {
  String? name;
  int? age;

  void showDetails() {
    print('Name: $name, Age: $age');
  }
}

class Student {
  String stdname;
  int stdage;
  String grade;

  Student(this.stdname, this.stdage, this.grade);

  void showdetail() {
    print('Name: $stdname, Age: $stdage, Grade: $grade');
  }
  void updateGrade(String newgrade){
    grade = newgrade;
    print('Grade updated to $grade');
  }
}
