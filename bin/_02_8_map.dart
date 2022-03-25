void main(List<String> args) {
  // maps are unordered collections of key-value pairs
  var map = {
    'key1': 'value1',
    'key2': 'value2',
    'key3': 'value3',
  };
  print(map); // {key1: value1, key2: value2, key3: value3}

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  print(nobleGases[2]); // helium

  // map string to string
  var nobleGases2 = Map<String, String>();
  nobleGases2['2'] = 'helium';
  nobleGases2['10'] = 'neon';
  nobleGases2['18'] = 'argon';
  print(nobleGases2); // {2: helium, 10: neon, 18: argon}

  // map int to string
  var nobleGases3 = Map<int, String>();
  nobleGases3[2] = 'helium';
  nobleGases3[10] = 'neon';
  nobleGases3[18] = 'argon';
  print(nobleGases3); // {2: helium, 10: neon, 18: argon}

  // add new key-value pair
  nobleGases3[3] = 'helium2';
  print(nobleGases3); // {2: helium, 10: neon, 18: argon, 3: helium2}

  // retrive value by key
  print(nobleGases3[2]); // helium

  print(#radix);
}
