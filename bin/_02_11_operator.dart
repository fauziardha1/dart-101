void main(List<String> args) {
  // get to know bitwise operators
  int a = 1;
  print(a << 3); // 0001 << 3 = 00010000

  int b = 64;
  print(b >> 2); // 01000000 >> 2 = 010000

  print(a | b); // 0001 | 01000000 = 01000001

  print(13 & 12); // 1101 & 0011 = 0001

  // if null
  int? c;
  print(c ?? 0); // 0

  // power operation
  var numb = 2;
  print(4 ^ 1); // 100 xor 001 = 101

  print(numb is num);

  // type cast
  num? number = numb;
  print(number is num); // 2.0

  // assignment operator
  print("\nassignment operator");
  var x;
  x ??= 2;

  print(x);

  // null checking
  var greet = Greeting(firstname: "John", lastName: null);
  Greeting? hello;

  print(greet.firstname);
  print(hello?.lastName ??
      "no last name"); // if the left object is null then the right object of ?? operator will be returned
}

class Greeting {
  String firstname;
  String? lastName;

  Greeting({required this.firstname, this.lastName});
}
