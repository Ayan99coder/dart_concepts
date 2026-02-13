void main() {
  // 1
  print('Hello world');
  // 2
  int age = 10;
  String name = 'Ayan';
  int marks = 100;
  bool isStudent = false;
  isStudent = true;
  //Outputs
  print(age);
  print(name);
  print(isStudent);
  // 3
  var city = 'Vehari'; // String pas kia to string he lyga
  dynamic value = 10; // String pas kia to int he lyga  ya koi b value lyga
  value = 'ten'; // like 10 to 'ten'
  print(city);
  print(value);

  print('My name is $name and I am $age years old and my city is $city');

  int num = -5;
  if (num >= 0)
    print('positive number');
  else
    print('number is negative');

  String names = 'AYAN';
  int i = 0;
  while (i < 10) {
    print(names);
    i++;
  }
  do {
    print(names);
    i++;
  } while (i < 10);
  List<dynamic> list = ['Ayan', 1, 0.5, 'zain', 'umar', 'umair'];
  print(list[2]);
  print(list[4]);
  list.add('uzair');
  list.insert(3, "uray");
  print(list);
  String numbers = '1';
  print(int.parse(numbers));
  print(double.parse(numbers));
  print(numbers.runtimeType);
  int day = 3;
  switch(day){
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('Invalid day');
      break;
  }
  int streetnum = 2;
  Map<String ,dynamic> map = {
    'name' : name,
    'age in numbers' : age,
    'street number ': streetnum,
  };
  print(map['name']);
  print(map['age in numbers']);
  print(map);
}
