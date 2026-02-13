
import 'dart:math';

void main() {
  //Write Program to convert feet to metres and metres into KM.
  double feet = 10;
  double meter = feet * 0.3048;
  print('The value in meters is $meter');
  double km = meter / 1000;
  print('The value in km is $km');

  // celcius to fahrenheit
  double cal = 30;
  double fah = (cal * 9 / 5) + 32;
  print('The value in fahrenheit is $fah');

  double fahs = 30;
  double calc = (fahs - 32) * 5 / 9;
  print('The value in celcius is $calc');

  // Area of a circle
  double radius = 5;
  double area = pi*radius*radius;
  print('The area of a circle is $area');

// area of a square
  double side = 4;

  double areaofsq = side * side;

  print("Area of Square: $areaofsq");

// area of a rectangle
  double length = 5;
  double width = 4;
  double areaofrec = length * width;
  print("Area of Rectangle: $areaofrec");


}
