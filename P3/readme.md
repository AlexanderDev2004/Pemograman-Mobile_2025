<h1>📱 Pengantar Bahasa Pemrograman Dart - Bagian 2</h1>

| Nama | NIM | Kelas/Absen |
| --- | --- | --- |
| Alexander Agung Raya | 2341720040 | TI-3H / 01 |
## Praktikum 1: Menerapkan Control Flows ("if/else")
- Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi `main()`.

```dart
void main() {
  String test = 'test1';

  if (test == 'test1') {
    print('test1');
  } else if (test == 'test2') {
    print('test2');
  } else {
    print('other');
  }
}
```


### Langkah 2:
- Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

### jawaban:
![alt text](/img/p3-1-1.png)

### Langkah 3:
- Langkah 3:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```dart
void main() {
  String test = "true";
  if (test == "true") {
    print("Kebenaran");
  }
}
```

### jawaban:
![alt text](/img/image-1-2.png)



## Praktikum 2: Menerapkan Perulangan "while" dan "do-while"

- Langkah 1:
  Ketik atau salin kode program berikut ke dalam fungsi main().
  ```dart
  void main() {
    int counter = 0;
    while (counter < 33) {
      print(counter);
      counter++;
    }
  }
  ```
- Langkah 2:
  Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

  ### jawaban:
  ![alt text](/img/image-2-1.png)

- Langkah 3:
  Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
  ```dart
  void main() {
    int counter = 0;
    while (counter < 33) {
      print(counter);
      counter++;
    } do {
      print(counter);
      counter++;
    } while (counter < 77);
  } 
  ```

  ### jawaban:
  ![alt text](/img/image-2-2.png)

## Praktikum 3: Menerapkan Perulangan "for" dan "break-continue"

- langkah 1:
  Ketik atau salin kode program berikut ke dalam fungsi `main()`.

  ```dart
  void main() {
    int index;
    for (index = 10; index < 27; index++) {
      print(index);
    }
  }
  ```
- langkah 2:
  silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

  ### jawaban:
 ![alt text](/img/image-3-1.png)

- langkah 3:
   Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
   ```dart
   If (Index == 21) break;
    Else If (index > 1 || index < 7) continue;
    print(index);
    ```
  
    ### jawaban:
    ![alt text](/img/image-3-2.png)


## Tugas Praktikum
1. Silakan selesaikan Praktikum 1 sampai 3, lalu dokumentasikan berupa screenshot hasil pekerjaan beserta penjelasannya! </br>
2. Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.

## Code jawaban 2
```dart
void main() {
  String nama = "Alexander Agung Raya"; 
  String nim = "2341720040"; 

  print("Bilangan Prima dari 0 sampai 201:");
  for (int i = 0; i <= 201; i++) {
    if (isPrima(i)) {
      print("$i -> $nama | $nim");
    } else {
      print("$i -> $nim");
    }
  }
}

bool isPrima(int n) {
  if (n < 2) return false;
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

```

### Jawaban
![alt text](/img/image-revisi.png)