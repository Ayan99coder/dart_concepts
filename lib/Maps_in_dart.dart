void main() {
  Map<String, dynamic> map = {
    'name': 'Ayan',
    'age': 22,
    'class': 'SP24-BCS-021',
  };
  print(map['name']);
  print(map['age']);
  print(map['class']);
  map['age'] = 21;
  print(map);
  print(map.keys);
  print(map.values);



    Map<String, dynamic> book = {
      'title': 'Misson Mangal',
      'author': 'Kuber Singh',
      'page': 233
    };

  for(MapEntry book in book.entries){
    print('Key is ${book.key}, value ${book.value}');
  }
    // Loop Through For Each
    book.forEach((key,value)=> print('Key is $key and value is $value'));


  Map<String, double> mathMarks = {
    "ram": 30,
    "mark": 32,
    "harry": 88,
    "raj": 69,
    "john": 15,
  };
  mathMarks.removeWhere((key, value) => value < 32);
  print(mathMarks);
  }

