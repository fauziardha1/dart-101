// maps of noble gases
var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

// create function to check if key exists in map
isNobleGas(int atomicNumber) {
  return nobleGases[atomicNumber] != null;
}

// void main(List<String> args) {
//   // check if key exists in map
//   print(isNobleGas(2)); // true
//   print(isNobleGas(3)); // false
// }

// function without annotation return type
sum(int a, int b) {
  return a + b;
}

// shorthand syntax
sum2(int a, int b) => a + b;

// Parameter section
// named parameter
getLongName({required String firstName, String? lastName = ""}) {
  return '$firstName $lastName';
}

// optional positional parameter
getLongName2(String firstName, [String? lastName = ""]) {
  return '$firstName $lastName';
}

void doStuff(
    {List<int> list = const [1, 2, 3],
    Map<String, String> gifts = const {
      'first': 'paper',
      'second': 'cotton',
      'third': 'leather'
    }}) {
  print('list:  $list');
  print('gifts: $gifts');
}

void main(List<String> args) {
  // named parameter
  print(getLongName(firstName: "John", lastName: "Doe")); // John Doe
  print(getLongName(firstName: "John")); // John
  // print(getLongName(lastName: "Doe")); // error
  // print(getLongName()); //error

  // optional positional parameter
  print(getLongName2("John", "Doe")); // John Doe
  print(getLongName2("John")); // John
}
