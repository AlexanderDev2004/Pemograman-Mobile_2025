void main() {
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  final list = List<String?>.filled(5, null);
  list[1] = "Alexander Agung Raya";
  list[2] = "2341720040";

  print(list[0]);
  print(list[1]);

  print(list); // tampilkan seluruh isi list
  print("Index 1 (Nama): ${list[1]}");
  print("Index 2 (NIM): ${list[2]}");
}
