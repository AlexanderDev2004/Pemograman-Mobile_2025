// // // // // // // 
// // // // // // void salam(String nama, [String? pesan]) {
// // // // // //   print("Hai $nama, ${pesan ?? 'Selamat datang!'}");
// // // // // // }

// // // // // // void main() {
// // // // // //   salam("Alexander Agung Raya");                  // tanpa pesan
// // // // // //   salam("Alexander Agung Raya", "Semangat!");     // dengan pesan
// // // // // // }

// // // // // void sapa(String nama) => print("Halo $nama");

// // // // // void jalankan(Function f, String arg) {
// // // // //   f(arg);
// // // // // }

// // // // // void main() {
// // // // //   var fungsi = sapa;       // simpan fungsi ke variabel
// // // // //   fungsi("Alexander Agung Raya");      // panggil via variabel

// // // // //   jalankan(sapa, "Dart");  // fungsi sebagai parameter
// // // // // }


// // // // void main() {
// // // //   var angka = [1, 2, 3];

// // // //   // Anonymous function dalam forEach
// // // //   angka.forEach((n) {
// // // //     print("Nilai: $n");
// // // //   });

// // // //   // Anonymous function disimpan ke variabel
// // // //   var kaliDua = (int x) => x * 2;
// // // //   print(kaliDua(5)); // Output: 10
// // // // }


// // // Function counter() {
// // //   int hitung = 0;

// // //   return () {
// // //     hitung++;
// // //     return hitung;
// // //   };
// // // }

// // // void main() {
// // //   var tambah = counter();

// // //   print(tambah()); // 1
// // //   print(tambah()); // 2
// // //   print(tambah()); // 3
// // // }

// // List<int> operasi(int a, int b) {
// //   return [a + b, a - b, a * b];
// // }

// // void main() {
// //   var hasil = operasi(6, 3);
// //   print("Tambah: ${hasil[0]}, Kurang: ${hasil[1]}, Kali: ${hasil[2]}");
  
// // }

// Map<String, int> operasi(int a, int b) {
//   return {
//     'tambah': a + b,
//     'kurang': a - b,
//     'kali': a * b,
//   };
// }

// void main() {
//   var hasil = operasi(6, 3);
//   print(hasil); // {tambah: 9, kurang: 3, kali: 18}
// }

(String, int) getData() {
  return ("Alexander Agung Raya", 2341720040);
}

void main() {
  var (nama, nim) = getData();
  print("Nama: $nama, NIM: $nim");
}
