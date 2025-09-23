<h1>📱 Pengantar Bahasa Pemrograman Dart - Bagian 3</h1>

| Nama | NIM | Kelas/Absen |
| --- | --- | --- |
| Alexander Agung Raya | 2341720040 | TI-3H / 01 |

## Praktikum 1: Eksperimen Tipe Data List

- Langkah 1:
Ketik atau salin kode program berikut ke dalam `void main()`.

```dart
void main() {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);
}
```
- Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

### jawaban:
![alt text](/img/p4-1-1.png)

- Langkah 3:
Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.

### jawaban:
![alt text](/img/p4-1-2.png)

## Praktikum 2: Eksperimen Tipe Data Set

- Langkah 1:
    Ketik atau salin kode program berikut ke dalam fungsi `main().`

    ```dart
    void main() {
        var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
        print(halogens);
    }
    ```
- langkah 2:
    Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

### jawaban:
![alt text](/img/p4-2-1.png)

- Langkah 3:
  ```dart
  void main() {
    var names1 = <String>{};
    Set<String> names2 = {}; // This works, too.
    var names3 = {}; // Creates a map, not a set.

    print(names1);
    print(names2);
    print(names3);
  }
  ```
  Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel tersebut. Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu `.add()` dan .`addAll()`. Untuk variabel Map dihapus, nanti kita coba di praktikum selanjutnya.

## jawaban:
![alt text](/img/p4-2-2.png)

## Praktikum 3: Eksperimen Tipe Data Map

- Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi `main()`.

```dart
void main() {
 var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
};

print(gifts);
print(nobleGases);
}
```

- Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi?

### jawaban:
![alt text](/img/p4-3-1.png)

- Langkah 3:
    Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

    ```dart
    void main() {
        var mhs1 = Map<String, String>();
        gifts['first'] = 'partridge';
        gifts['second'] = 'turtledoves';
        gifts['fifth'] = 'golden rings';

        var mhs2 = Map<int, String>();
        nobleGases[2] = 'helium';
        nobleGases[10] = 'neon';
        nobleGases[18] = 'argon';
    }
    ```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2). Dokumentasikan hasilnya dan buat laporannya!

### jawaban:
* BEFORE </br>
  ![alt text](/img/p4-3-2.png)
* After </br>
  ![alt text](/img/p4-3-3.png)

## Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators

- langkah 1 :
  Ketik atau salin kode program berikut ke dalam fungsi `main()`.
  ```dart
  void main() {
    var list = [1, 2, 3];
    var list2 = [0, ...list];
    print(list1);
    print(list2);
    print(list2.length);
  }
  ```
- langkah 2 :
  Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi?

  ### jawaban:
  ![alt text](/img/p4-4-1.png)

- langkah 3 :
  Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda

  ```dart
  void main() {
    list1 = [1, 2, null];
    print(list1);
    var list3 = [0, ...?list1];
    print(list3.length);
  }
  ```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators. Dokumentasikan hasilnya dan buat laporannya!

### jawaban:
![alt text](/img/p4-4-2.png)
![alt text](/img/p4-4-3.png)

- langkah 4 :
  Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
  ```dart
  void main() {
        var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
        print(nav);
    }
    ```
    Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel `promoActive` ketika `true` dan `false`.

### jawaban:
`true` </br>
![alt text](/img/p4-4-4.png)

`false` </br>
![alt text](/img/p4-4-5.png)

- langkah 5 :
  Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

    ```dart
    void main() {
       var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
        print(nav2);
    }
    ```
    Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel login mempunyai kondisi lain.

### jawaban:
`manager` </br>
![alt text](/img/p4-4-6.png)

`karyawan` </br>
![alt text](/img/p4-4-7.png)

- langkah 6 :
  Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
  ```dart
  void main() {
    var listOfInts = [1, 2, 3];
    var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
    assert(listOfStrings[1] == '#1');
    print(listOfStrings);
  }
  ```
  Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Jelaskan manfaat Collection For dan dokumentasikan hasilnya.

### jawaban:
![alt text](/img/p4-4-8.png)

manfaat Collection For adalah untuk mengulangkan looping dengan menggunakan `for` dan `in` di dalam kode.

## Praktikum 5: Eksperimen Tipe Data Records

- Langkah 1:
    Ketik atau salin kode program berikut ke dalam fungsi `main()`.

    ```dart
        var record = ('first', a: 2, b: true, 'last');
        print(record)
    ```
- Langkah 2:
    Silakan coba eksekusi (Run) kode pada langkah 1 tersebut
    ### jawaban:
    ![alt text](/img/p4-5-1.png)
- Langkah 3:
  Tambahkan kode program berikut di luar scope void `main()`, lalu coba eksekusi (Run) kode Anda.

  ```dart
  void main() {
        (int, int) tukar((int, int) record) {
        var (a, b) = record;
        return (b, a);
    }

  }
  ```

  Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gunakan fungsi `tukar()` di dalam `main()` sehingga tampak jelas proses pertukaran value field di dalam Records.
  ### jawaban:
  ![alt text](/img/p4-5-2.png)

- Langkah 4:
  Tambahkan kode program berikut di dalam scope `void main()`, lalu coba eksekusi (Run) kode Anda.

  ```dart
  void main() {
    // Record type annotation in a variable declaration:
    (String, int) mahasiswa;
    print(mahasiswa);
  }
  ```
  Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Inisialisasi field nama dan NIM Anda pada variabel record mahasiswa di atas. Dokumentasikan hasilnya dan buat laporannya!

  ### jawaban:
  ![alt text](/img/p4-5-3.png)

- Langkah 5:
  Tambahkan kode program berikut di dalam scope `void main()`, lalu coba eksekusi (Run) kode Anda.

  ```dart
  void main() {
    var mahasiswa2 = ('first', a: 2, b: true, 'last');

    print(mahasiswa2.$1); // Prints 'first'
    print(mahasiswa2.a); // Prints 2
    print(mahasiswa2.b); // Prints true
    print(mahasiswa2.$2); // Prints 'last'
  }
  ```
  Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gantilah salah satu isi record dengan nama dan NIM Anda, lalu dokumentasikan hasilnya dan buat laporannya!

### jawaban:
![alt text](/img/p4-5-4.png)


## Tugas Praktikum
1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya! </br>
2. Jelaskan yang dimaksud Functions dalam bahasa Dart! </br>
   * jawaban  :
   Fungsi `(Functions)` adalah blok kode yang dapat dipanggil untuk menjalankan tugas tertentu. Membantu menghindari kode duplikat Membuat program lebih terstruktur dan mudah dibaca
   Bisa menerima parameter dan mengembalikan nilai `(return)` </br>
3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya! </br>
   * jawaban :
  Dart mendukung beberapa jenis parameter seperti :
    a) Positional Parameter

    ```dart
    void main() {
      void halo(String nama, int umur) {
        print("Halo $nama, umur Anda $umur");
    }

    void main() {
        halo("Alex-san", 21);
    }
    ```
    ![alt text](/img/p4-t-1.png)
    
    b) Optional Positional Parameter `[ ]`
    ```dart
    void salam(String nama, [String? pesan]) {
    print("Hai $nama, ${pesan ?? 'Selamat datang!'}");
    }

    void main() {
    salam("Alexander Agung Raya");                  // tanpa pesan
    salam("Alexander Agung Raya", "Semangat!");     // dengan pesan
    }
    ```
    ![alt text](/img/p4-t-2.png)

    c) Named Parameter `{ }`
    ```dart
    void info({required String nama, int umur = 0}) {
    print("Nama: $nama, Umur: $umur");
    }

    void main() {
    info(nama: "Alex-san", umur: 21);
    }
    ```
    ![alt text](/img/p4-t-3.png)


4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya! </br>
    * jawaban :
      - Bisa disimpan di variabel
      - Bisa dijadikan parameter
      - Bisa dijadikan nilai return

      ```dart
      void sapa(String nama) => print("Halo $nama");

        void jalankan(Function f, String arg) {
        f(arg);
        }

        void main() {
        var fungsi = sapa;       // simpan fungsi ke variabel
        fungsi("Alexander Agung Raya");      // panggil via variabel

        jalankan(sapa, "Dart");  // fungsi sebagai parameter
        }
      ```
      ![alt text](/img/p4-t-4.png)
5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya! </br>
   * jawaban :
   Fungsi yang tidak punya nama. Biasanya dipakai langsung sebagai argumen atau variabel.
   ```dart
    void main() {
    var angka = [1, 2, 3];

    // Anonymous function dalam forEach
    angka.forEach((n) {
    print("Nilai: $n");
    });

    // Anonymous function disimpan ke variabel
    var kaliDua = (int x) => x * 2;
    print(kaliDua(5)); // Output: 10
    }
    ```
    ![alt text](/img/p4-t-5.png)
6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya! </br>
   * jawaban :
     - Lexical Scope Aturan akses variabel berdasarkan lokasi penulisan kode.
  
       ```dart
        void main() {
        var pesan = "Halo";

        void tampil() {
        print(pesan); // bisa akses karena masih dalam scope
        }

        tampil(); // Output: Halo
        }

     - Lexical Closures Fungsi membawa serta scope tempat dia dibuat, walaupun dipanggil di luar scope asalnya.
       ```dart
            Function counter() {
            int hitung = 0;

            return () {
            hitung++;
            return hitung;
            };
            }

            void main() {
            var tambah = counter();

            print(tambah()); // 1
            print(tambah()); // 2
            print(tambah()); // 3
            }
        
    ![alt text](/img/p4-t-6.png)

1. Jelaskan dengan contoh cara membuat return multiple value di Functions! </br>

* jawaban :
  Dart tidak mendukung return lebih dari satu nilai langsung, tapi bisa pakai

  a) List
  ```dart
    List<int> operasi(int a, int b) {
    return [a + b, a - b, a * b];
    }

    void main() {
        var hasil = operasi(6, 3);
        print("Tambah: ${hasil[0]}, Kurang: ${hasil[1]}, Kali: ${hasil[2]}");
    }   

    }
  ```
  ![alt text](/img/p4-t-7.png)

  b) Map
  ```dart
    Map<String, int> operasi(int a, int b) {
        return {
        'tambah': a + b,
        'kurang': a - b,
        'kali': a * b,
    };
    }

    void main() {
    var hasil = operasi(6, 3);
    print(hasil); // {tambah: 9, kurang: 3, kali: 18}
    }
    ```
    ![alt text](/img/p4-t-8.png)

    c) Record
    ```dart
        (String, int) getData() {
        return ("Alexander Agung Raya", 2341720040);
        }

        void main() {
        var (nama, nim) = getData();
        print("Nama: $nama, NIM: $nim");
        }
    ```
    ![alt text](/img/p4-t-9.png)


