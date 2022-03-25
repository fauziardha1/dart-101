void main(List<String> args) {
  // annotate a variable with a type
  int number = 42;
  print(number);

  // invered the type of a variable
  var number2 = 42;
  print(number2);

  print(number.runtimeType == number2.runtimeType); // true

  // null safety
  // null is a value that represents the absence of a value
  int? nullableNumber; // might be null or int
  print(nullableNumber);

  int assertNotNull = getNullableNumber()!;
  print(assertNotNull);

  // anytype allowed
  Object? anyType;
  anyType = null;
  print(anyType);

  // list of anytype
  List<Object?> listOfAnyType = [];
  listOfAnyType.add(null);
  listOfAnyType.add(42);
  print(listOfAnyType);

  // Variables
  print("\nVariables Section");
  var name =
      "John"; // inverted type variable, when it initiated it(type) will not be changed later
  print(name);

  // object ones
  Object name2 = "John";
  print(name2); //"John"
  name2 = 42;
  print(name2); //42

  // default value for uninitiated variables
  var name3;
  print(name3); //null
  int? lineCount;
  print(lineCount == null);

  // Late section
  print("\nLate Section");
  late String
      lateName; // late is a keyword that means that the variable will be initiated later
  lateName = "John";
  print(lateName); //"John"

  // final and const section
  print("\nFinal and Const Section");
  final name4 = "John";
  print(name4); //"John"
  // name4 = "Jack"; // error because name4 is final cannot be changed after initialized.

  const name5 = "John";
  print(name5); //"John"
  // name5 = "Jack"; // error because name5 is const cannot be changed after initialized.

  // final vs const
  final name6; // name6 can be null or uninitiated but when it is initialized it cannot be changed
  // const name7; // error because const must be initialized.

  // final on list
  final List<String> names = ["John", "Jack"];
  names.add(
      "Jill"); // error because names is const cannot be changed after initialized.
  print(names); // ["John", "Jack", "Jill"]

  // object
  // create string using constructor
  String name8 = String.fromCharCodes([0x49, 0x6e, 0x74]);
  print(name8); //"Int"

  // create a map using constructor and initialize it
  Map<String, int> ages = {
    "John": 42,
    "Jack": 35,
  };

  print(ages); //{"John": 42, "Jack": 35}
}

// function to return nullable int
int? getNullableNumber() {
  return 12;
}
