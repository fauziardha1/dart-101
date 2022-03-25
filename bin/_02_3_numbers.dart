import 'dart:math';

void main(List<String> args) {
  print("int max num: ${pow(2, 63) - 1}");
  print("int min num: ${pow(-2, 63)}");

  num a = 1.0;
  num b = 2;
  a = 1;
  a = 1.2;

  // get absolute number
  print("abs: ${a.abs()}"); // 1.2

  // defining an int
  var x = 1;
  var hex = 0xDEADBEEF;
  var exponent = 8e-5;

  print("x: $x");
  print("hex: $hex");
  print("exponent: $exponent");

  // number checking
  num number =
      1; // num type will be inferred to int by default when it initializes with literal int number.
  print(number is int); // true
  print(number is double); // false
  number += 2.5;
  print(number is double); // true
  print(number is int); // false

  // string to number
  var str = "123";
  int num1 = int.parse(str); // 123
  print(num1);

  double num2 = double.parse(str); // 123.0
  print(num2);

  // int to string
  String str1 = num1.toString(); // "123"
  print(str1);

  // double to string
  String str2 = 3.14159.toStringAsFixed(2); // "3.14"
  print(str2);
}
