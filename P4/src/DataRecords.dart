void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var swapped = tukar((1, 2));
  print(swapped);

  (String, int) mahasiswa = ('Alexander Agung Raya', 2341720040);
  print(mahasiswa);

  var mahasiswa2 = ('Alexander', a: 2341720040, b: true, 'Agung Raya');
  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2 
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
