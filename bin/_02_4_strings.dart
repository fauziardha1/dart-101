void main(List<String> args) {
  // string concatenation
  String name = "John" "Doe" "Smith";
  print(name); // JohnDoeSmith

  // multi line string
  String multiLine = """
  Hello
  World
  """;
  print(multiLine);

  // These work in a const string.
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';

// These do NOT work in a const string.
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';
  const aConstList = [1, 2, 3];

  const validConstString = '$aConstNum $aConstBool $aConstString';
// const invalidConstString = '$aNum $aBool $aString $aConstList';
}
