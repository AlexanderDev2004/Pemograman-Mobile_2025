void main() {
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {};
  // var names3 = {};           // Map, dihapus sesuai instruksi


  names1.add("Alexander Agung Raya");
  names1.add("2341720040");

  // Tambahkan nama & NIM ke names2 (pakai .addAll)
  names2.addAll(["Alexander Agung Raya", "2341720040"]);

  // Print hasil
  print("names1: $names1");
  print("names2: $names2");
}
