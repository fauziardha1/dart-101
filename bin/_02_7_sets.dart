void main(List<String> args) {
  // sets are unordered collections of unique elements
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens); // {fluorine, chlorine, bromine, iodine, astatine}

  print(halogens.runtimeType);

  // create set
  var names = <String>{};
  Set<String> namelist = {};
  var names2 = {};

  // add elements
  names.add('John');
  names.addAll(['Mary', 'James']);
  print(names); // {John, Mary, James}

  // length
  print(names.length); // 3

  // compile-time constant
  final constantSet = const {'John', 'Mary', 'James'};
  // constantSet.add('Jack'); // error
}
