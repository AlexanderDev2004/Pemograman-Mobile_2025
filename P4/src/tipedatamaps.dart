void main() {
  // var gifts = {
  //   // Key:    Value
  //   'first': 'partridge',
  //   'second': 'turtledoves',
  //   'fifth': 1
  // };

  // var nobleGases = {
  //   2: 'helium',
  //   10: 'neon',
  //   18: 2,
  // };

  // print(gifts);
  // print(nobleGases);

  var gifts = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var nobleGases = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';  
  nobleGases[18] = 'argon';

  gifts['name'] = 'Alexander Agung Raya';
  gifts['nim'] = '2341720040';

  nobleGases[99] = 'Alexander Agung Raya';
  nobleGases[100] = '2341720040';

 
  var mhs1 = {
    'name': 'Alexander Agung Raya',
    'nim': '2341720040'
  };

  var mhs2 = Map<String, String>();
  mhs2['name'] = 'Alexander Agung Raya';
  mhs2['nim'] = '2341720040';

  
  print("gifts: $gifts");
  print("nobleGases: $nobleGases");
  print("mhs1: $mhs1");
  print("mhs2: $mhs2");

}