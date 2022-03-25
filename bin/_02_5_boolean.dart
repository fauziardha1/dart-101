void main(List<String> args) {
  // check for empty string
  String name = "";
  print(name.isEmpty); // true

  // check for null
  String? name2;
  print(name2 == null); // true

  // check for nan
  double? nan = double.nan;
  print(nan.isNaN); // true
}
