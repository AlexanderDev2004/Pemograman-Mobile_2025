<h1>📱 Manajemen Plugin</h1>

| Nama | NIM | Kelas/Absen |
| --- | --- | --- |
| Alexander Agung Raya | 2341720040 | TI-3H / 01 |

##  Praktikum Menerapkan Plugin di Project Flutter

- Langkah 1: Buat Project Baru
  Buatlah sebuah project flutter baru dengan nama `flutter_plugin_pubdev`. Lalu jadikan repository di GitHub Anda dengan nama `flutter_plugin_pubdev`.

- Langkah 2: Menambahkan Plugin
 Tambahkan `plugin auto_size_text` menggunakan perintah berikut di terminal

 ```bash
 flutter pub add auto_size_text
 ```
 Jika berhasil, maka akan tampil nama plugin beserta versinya di file `pubspec.yaml` pada bagian dependencies.

 ### Jawaban
 ![alt text](/img/p7-1-1.png) // p7-1-1

- Langkah 3: Buat file red_text_widget.dart
    Buat file baru bernama `red_text_widget.dart` di dalam folder lib lalu isi kode seperti berikut.
    ```dart
    import 'package:flutter/material.dart';

    class RedTextWidget extends StatelessWidget {
  const RedTextWidget({Key? key}) : super(key: key);

    @override
        Widget build(BuildContext context) {
        return Container();
    }
    }
    ```

- Langkah 4: Tambah Widget AutoSizeText
    Masih di file `red_text_widget.dart`, untuk menggunakan plugin auto_size_text, ubahlah kode return `Container()` menjadi seperti berikut.

    ```dart
     return AutoSizeText(
      text,
      style: const TextStyle(color: Colors.red, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
    ```

    Setelah Anda menambahkan kode di atas, Anda akan mendapatkan info error. Mengapa demikian? Jelaskan dalam laporan praktikum Anda!

    ### Jawaban
    Karena plugin ini tidak memiliki file `pubspec.yaml` yang dibutuhkan untuk menjalankan plugin tersebut. dan 
    juga menambahkan parameter opsional fontSize dan maxLines gunakan textAlign

- Langkah 5: Buat Variabel text dan parameter di constructor
    Tambahkan variabel `text` dan parameter di constructor seperti berikut.
    ```dart
    final String text;

    const RedTextWidget({Key? key, required this.text}) : super(key: key);
    ```

- Langkah 6: Tambahkan widget di main.dart
    Buka file `main.dart` lalu tambahkan di dalam `children`: pada class `_MyHomePageState`

    ```dart
     Container(
        color: Colors.yellowAccent,
        width: 50,
        child: const RedTextWidget(
            text: 'You have pushed the button this many times:',
        ),
    ),
    Container(
    color: Colors.greenAccent,
    width: 100,
    child: const Text(
           'You have pushed the button this many times:',
          ),
    ),
    ```

    ### Jawaban
    ![alt text](/img/p7-1-2.png) // p7-1-2