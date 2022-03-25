// Run the app like this: dart args.dart 1 test
// void main(List<String> arguments) {
//   print(arguments);

//   assert(arguments.length == 2);
//   assert(int.parse(arguments[0]) == 1);
//   assert(arguments[1] == 'test');
// }

// void main(List<String> args) {
//   // function as first class object
//   void printElement(int element) {
//     print(element * 5);
//   }

//   // list of integers
//   var list = [1, 2, 3];

//   // call function for each element
//   list.forEach(printElement);

//   // assign function to a variable
//   var add = (int a, int b) => a + b;

//   print(add(1, 2));

//   // anonymous function section
//   print("Annononymous function");
//   var list2 = [1, 2, 3];
//   list2.forEach(print);

//   list2.forEach((element) => print(element * 5));

//   // lexical scope in dart
//   print("Lexical scope");
// }

bool topLevel = true;

// void main() {
//   var insideMain = true;

//   void myFunction() {
//     var insideFunction = true;

//     void nestedFunction() {
//       var insideNestedFunction = true;

//       assert(topLevel);
//       assert(insideMain);
//       assert(insideFunction);
//       assert(insideNestedFunction);
//     }

//     // assert(insideNestedFunction); //error
//   }
// }

// lexical closure
void main(List<String> args) {
  Function greetings(String hello) {
    return (String name) => '$hello $name';
  }

  var sayHello = greetings('Hello');
  var sayHi = greetings('Hi');

  print(sayHello('John'));
  print(sayHi('John'));

  assert(sayHello('John') == 'Hello John');

  // Testing functions for equality
  print("Testing functions for equality");

  Function funcToTest;
  funcToTest = topLevelFunction;

  // comparing to top lavel function
  print(funcToTest == topLevelFunction); // true

  // comparing static method
  print(funcToTest == A.staticMethod); // false

  var instance1 = A();
  var instance2 = A();
  var otherInstance = instance2;
  funcToTest = instance2.classMethod;

  // test equality of two same reference of instance object
  print(funcToTest == otherInstance.classMethod); // true

  // test equality of two different reference of instance object
  print(funcToTest == instance1.classMethod); // false

  // return value section
  print("\nreturn value section");
  foo() {}
  print(foo is Function); // true
  print(foo() == null); // true
}

void topLevelFunction() {}

class A {
  static void staticMethod() {}
  void classMethod() {}
}
