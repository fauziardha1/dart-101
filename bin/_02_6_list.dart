void main(List<String> args) {
  // spread operator
  var list = [1, 2, 3];
  var list2 = [...list, 4, 5];
  print(list2); // [1, 2, 3, 4, 5]

  var list3 = [0, ...list];
  assert(list3.length == 1);

  // collection if
  var promoActive = true;
  var list4 = [1, 2, 3, if (promoActive) 4, 5];
  print(list4); // [1, 2, 3, 4, 5]

  // collection for
  var list5 = [for (var i = 0; i < 10; i++) i];
  print(list5); // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings); // ['#0', '#1', '#2', '#3']
}
