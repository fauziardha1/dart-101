// Define a function
void printInteger(int aNumber) {
  print('The number is $aNumber'); // print to console
}

// typedef is an alias for a type definition
typedef ListMapper<X> = Map<X, List<X>>;
Map<String, List<String>> m1 = {}; // Verbose.
ListMapper<String> m2 = {};

// simple typedef example with a function
typedef Adder<T> = T Function(T a, T b);

int sort(int a, int b) {
  return a - b;
}

void main(List<String> args) {
  int number = 42;
  printInteger(number);

  print(m2.runtimeType);

  print(sort is Adder<int>); // true

  Adder<int> add = (int a, int b) => a - b; // initiate a function with typedef

  print(add(1, 2)); // -1
}
