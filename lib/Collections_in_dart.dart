void main() {
  // operations in dart list
  List<String> names = ['Ayan', 'Haseeb', 'Umar'];
  List<String> name2 = ['aaa', 'bbb', 'ccc'];
  
  names.add('zain');
  names.insert(3, 'Umair');
  names.addAll(['Ayan', 'Haseeb', 'Umar']);
  names.insertAll(5, ['Ayan', 'Haseeb', 'Umar']);
  print(names.indexOf('Ayan'));
  names.forEach((e) => print(e));
  names.remove('Ayan');
  names.removeLast();
  names.removeAt(4);
  names.removeRange(0, 3);
  // Combined list
  List<String> combinedList = [...names, ...name2];
  print(names);
  print(combinedList);
  // Use of where in dart list
  List<int> numbers = [2, 4, 6, 8, 10, 11, 12, 13, 14];
  List<int> even = numbers.where((e) => e.isEven).toList();
  print(even);
}
