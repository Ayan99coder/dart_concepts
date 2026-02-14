class Person {
  String? _name;
  int? _age;
  int? _id;

  String getName() => _name!;

  int getAge() => _age!;

  int getId() => _id!;

  void setName(String name) => this._name = name;

  void setAge(int age) => this._age = age;

  void setId(int id) => this._id = id;
}

class Vehicle {
  String? _model;
  int? _year;

  String get model => _model!;

  int get year => _year!;

  set model(String model) => _model = model;

  set year(int year) => _year = year;
}

class Person2 {
  String? _firstName;
  String? _secondName;

  Person2(this._firstName, this._secondName);

  String get fullNmae => '$_firstName $_secondName';
}

class NoteBook {
  final String? _title;
  final int? _prize;

  NoteBook(this._title, this._prize);

  String get title => _title!;

  int get prize => _prize!;

  dynamic get info => '$_title : $_prize';
}

class Doctor {
  String _name;
  int _age;
  String _gender;

  Doctor(this._name, this._age, this._gender);

  String get name => _name;

  int get age => _age;

  String get gender => _gender;

  Map<String, dynamic> get map {
    return {"name": _name, "age": _age, "gender": _gender};
  }
}

class Student {
  String? _firstName;
  String? _lastName;
  int? _age;

  String get firstName => _firstName!;

  String get lastName => _lastName!;

  String get fullNmae => this._firstName! + " " + this._lastName!;

  int get age => _age!;

  set fristName(String firstName) => this._firstName = firstName;

  set lastName(String lastName) => this._lastName = lastName;

  set age(int age) {
    if (age < 0) {
      print('Invalid age');
    }
    this._age = age;
  }
}

class BankAccount {

  double _balance = 0.0;


  double get balance => this._balance;


  void deposit(double amount) {
    this._balance += amount;
  }


  void withdraw(double amount) {
    if (this._balance >= amount) {
      this._balance -= amount;
    } else {
      throw new Exception("Insufficient Balance");
    }
  }
}
void main() {
  Person person = Person();
  person.setAge(21);
  person.setName('Ayan');
  print('${person.getName()} : ${person.getAge()}');

  Person2 person2 = Person2('Ayan', 'Haseeb');
  print(person2.fullNmae);

  Vehicle vehicle = Vehicle();
  vehicle.model = 'Toyota';
  vehicle.year = 2022;
  print('${vehicle.model} : ${vehicle.year}');

  NoteBook noteBook = NoteBook('Ayan', 1000);
  print('${noteBook.title} : ${noteBook.prize}');
  print(noteBook.info);

  Doctor doctor = Doctor('Ayan', 21, 'Male');
  print(doctor.map);

  Student student = Student();
  student.fristName = 'Ayan';
  student.lastName = 'Haseeb';
  student.age = 21;
  print('${student.firstName} ${student.lastName} : ${student.age}');

  BankAccount bankAccount = BankAccount();
  bankAccount.deposit(1000);
  print(bankAccount.balance);
  bankAccount.withdraw(500);
  print(bankAccount.balance);
}
