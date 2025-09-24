<h1>📱 Aplikasi Pertama dan Widget Dasar Flutter</h1>

| Nama | NIM | Kelas/Absen |
| --- | --- | --- |
| Alexander Agung Raya | 2341720040 | TI-3H / 01 |

## Praktikum 3: Membuat Repository GitHub dan Laporan Praktikum
- Langkah 1:
  Login ke akun GitHub Anda, lalu buat repository baru dengan nama "flutter-fundamental-part1"

- Langkah 2:
  Lalu klik tombol "Create repository" lalu akan tampil seperti gambar berikut.

- Langkah 3:
  Kembali ke VS code, project flutter hello_world, buka terminal pada menu Terminal > New Terminal. Lalu ketik perintah berikut untuk inisialisasi git pada project Anda.
  ```bash
  git init
  ```
- Langkah 4:
    Pilih menu Source Control di bagian kiri, lalu lakukan stages (+) pada file .gitignore untuk mengunggah file pertama ke repository GitHub.

- Langkah 5:
    Beri pesan commit "tambah gitignore" lalu klik Commit (✔)

- Langkah 6:
    Lakukan push dengan klik bagian menu titik tiga > Push

- Langkah 7:
    Di pojok kanan bawah akan tampil seperti gambar berikut. Klik "Add Remote"

- Langkah 8:
    Salin tautan repository Anda dari browser ke bagian ini, lalu klik Add remote Setelah berhasil, tulis remote name dengan "origin"

- Langkah 9:
  Lakukan hal yang sama pada file README.md mulai dari Langkah 4. Setelah berhasil melakukan push, masukkan username GitHub Anda dan password berupa token yang telah dibuat (pengganti password konvensional ketika Anda login di browser GitHub). Reload halaman repository GitHub Anda, maka akan tampil hasil push kedua file tersebut seperti gambar berikut.

- Langkah 10:
  
    Lakukan push juga untuk semua file lainnya dengan pilih Stage All Changes. Beri pesan commit "project hello_world". Maka akan tampil di repository GitHub Anda seperti berikut.

- Langkah 11:
    Kembali ke VS Code, ubah platform di pojok kanan bawah ke emulator atau device atau bisa juga menggunakan browser Chrome. Lalu coba running project hello_world dengan tekan F5 atau Run > Start Debugging. Tunggu proses kompilasi hingga selesai, maka aplikasi flutter pertama Anda akan tampil seperti berikut.

    !warning
    Perhatian: Proses Run atau kompilasi untuk pertama kali akan memakan waktu cukup lama (3-5 menit). Namun, proses kompilasi berikutnya menjadi lebih cepat. Berbeda ketika melakukan kompilasi ke device, hal ini akan memakan waktu lebih lama lagi.

- Langkah 12:
Silakan screenshot seperti pada Langkah 11, namun teks yang ditampilkan dalam aplikasi berupa nama lengkap Anda. Simpan file screenshot dengan nama 01.png pada folder images (buat folder baru jika belum ada) di project hello_world Anda. Lalu ubah isi README.md seperti berikut, sehingga tampil hasil screenshot pada file README.md. Kemudian push ke repository Anda.

![alt text](/images/P5-1-1.png)
## Praktikum 4: Menerapkan Widget Dasar

- Langkah 1: Text Widget
    Buat folder baru `basic_widgets` di dalam folder lib. Kemudian buat file baru di dalam `basic_widgets` dengan nama `text_widget.dart`. Ketik atau salin kode program berikut ke project hello_world Anda pada file `text_widget.dart`.

    ```dart
    import 'package:flutter/material.dart';

    class MyTextWidget extends StatelessWidget {
    const MyTextWidget({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
    return const Text(
      "Nama saya Alexander Agung Raya, sedang belajar Pemrograman Mobile",
      style: TextStyle(color: Colors.red, fontSize: 14),
      textAlign: TextAlign.center);
    }
    }
    ```

    Lakukan import file `text_widget`.dart ke main.dart, lalu ganti bagian text widget dengan kode di atas. Maka hasilnya seperti gambar berikut. Screenshot hasil milik Anda, lalu dibuat laporan pada file README.md.

    ### Jawaban
    ![alt text](/images/p5-1-2.png)

- Langkah 2: Image Widget
  Buat sebuah file `image_widget.dart`di dalam folder basic_widgets dengan isi kode berikut.

  ```dart
  import 'package:flutter/material.dart';

    class MyImageWidget extends StatelessWidget {
    const MyImageWidget({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("/images/lIamProgrammerEnglish.png")
    );
  }
    }
    ```

    Lakukan penyesuaian asset pada file ``pubspec.yaml`` dan tambahkan file logo Anda di folder `assets` project hello_world.

    ```yaml
        flutter:
        assets:
     IamProgrammerEnglish.png
    ```

    Jangan lupa sesuaikan kode dan import di file main.dart kemudian akan tampil gambar seperti berikut.

    ### Jawaban
    ![alt text](/images/p5-1-3.png)
    
## Praktikum 5: Menerapkan Widget Material Design dan iOS Cupertino

- Langkah 1: Cupertino Button dan Loading Bar
  Buat file di basic_widgets > `loading_cupertino.dart.` Import stateless widget dari material dan cupertino. Lalu isi kode di dalam method Widget build adalah sebagai berikut.

  ```dart
  return MaterialApp(
      home: Container(
        margin: const EdgeInsets.only(top: 30),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            CupertinoButton(
              child: const Text("Contoh button"),
              onPressed: () {},
            ),
            const CupertinoActivityIndicator(),
          ],
        ),
      ),
    );
    ```
    ### Jawaban
    ![alt text](/images/p5-1-4.png)

- Langkah 2: Floating Action Button (FAB)
    Button widget terdapat beberapa macam pada flutter yaitu ButtonBar, DropdownButton, TextButton, FloatingActionButton, IconButton, OutlineButton, PopupMenuButton, dan ElevatedButton.

    Buat file di basic_widgets > `fab_widget.dart`. Import stateless widget dari material. Lalu isi kode di dalam method Widget build adalah sebagai berikut.

    ```dart
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(Icons.thumb_up),
          backgroundColor: Colors.pink,
        ),
      ),
    );
    ```

    ### Jawaban
    ![alt text](/images/p5-1-5.png)
- Langkah 3: Scaffold Widget
    Scaffold widget digunakan untuk mengatur tata letak sesuai dengan material design.

    Ubah isi kode `main.dart` seperti berikut.

    ```dart
    import 'package:flutter/material.dart';

    void main() {
    runApp(const MyApp());
    }

    class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.red,
        ),
        home: const MyHomePage(title: 'My Increment App'),
        );
    }
    }

    class MyHomePage extends StatefulWidget {
    const MyHomePage({Key? key, required this.title}) : super(key: key);

    final String title;

    @override
    State<MyHomePage> createState() => _MyHomePageState();
    }

    class _MyHomePageState extends State<MyHomePage> {
    int _counter = 0;

    void _incrementCounter() {
        setState(() {
        _counter++;
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: Text(widget.title),
        ),
        body: Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                const Text(
                'You have pushed the button this many times:',
                ),
                Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
                ),
            ],
            ),
        ),
        bottomNavigationBar: BottomAppBar(
            child: Container(
            height: 50.0,
            ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment Counter',
            child: const Icon(Icons.add),
        ), 
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        );
    }
    }
    ```

    ### Jawaban
    ![alt text](/images/p5-1-6.png)

- Langkah 4: Dialog Widget
    Dialog widget pada flutter memiliki dua jenis dialog yaitu `AlertDialog` dan `SimpleDialog`.

    Ubah isi kode main.dart seperti berikut.

    ```dart
    class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyLayout(),
      ),
    );
     }
    }

    class MyLayout extends StatelessWidget {
    const MyLayout({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            child: const Text('Show alert'),
            onPressed: () {
            showAlertDialog(context);
            },
        ),
        );
    }
    }

    showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
        child: const Text("OK"),
        onPressed: () {
        Navigator.pop(context);
        },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
        title: const Text("My title"),
        content: const Text("This is my message."),
        actions: [
        okButton,
        ],
    );

    // show the dialog
    showDialog(
        context: context,
        builder: (BuildContext context) {
        return alert;
        },
    );
    }
    ```

    ### Jawaban
    ![alt text](/images/p5-1-7.png)

- Langkah 5: Input dan Selection Widget
    Flutter menyediakan widget yang dapat menerima input dari pengguna aplikasi yaitu antara lain Checkbox, Date and Time Pickers, Radio Button, Slider, Switch, TextField.

    Contoh penggunaan TextField widget adalah sebagai berikut:

    ```dart
    class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Contoh TextField")),
        body: const TextField(
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Nama',
          ),
        ),
      ),
    );
    }
    }
    ```

    ### Jawaban
    ![alt text](/images/p5-1-8.png)

- Langkah 6: Date and Time Pickers
    Date and Time Pickers termasuk pada kategori input dan selection widget, berikut adalah contoh penggunaan Date and Time Pickers.

    ```dart
    import 'dart:async';
        import 'package:flutter/material.dart';

        void main() => runApp(const MyApp());

        class MyApp extends StatelessWidget {
        const MyApp({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
            return const MaterialApp(
            title: 'Contoh Date Picker',
            home: MyHomePage(title: 'Contoh Date Picker'),
            );
        }
        }

        class MyHomePage extends StatefulWidget {
        const MyHomePage({Key? key, required this.title}) : super(key: key);

        final String title;

        @override
        _MyHomePageState createState() => _MyHomePageState();
        }

        class _MyHomePageState extends State<MyHomePage> {
        // Variable/State untuk mengambil tanggal
        DateTime selectedDate = DateTime.now();

        //  Initial SelectDate FLutter
        Future<void> _selectDate(BuildContext context) async {
            // Initial DateTime FIinal Picked
            final DateTime? picked = await showDatePicker(
                context: context,
                initialDate: selectedDate,
                firstDate: DateTime(2015, 8),
                lastDate: DateTime(2101));
            if (picked != null && picked != selectedDate) {
            setState(() {
                selectedDate = picked;
            });
            }
        }

        @override
        Widget build(BuildContext context) {
            return Scaffold(
            appBar: AppBar(
                title: Text(widget.title),
            ),
            body: Center(
                child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                    Text("${selectedDate.toLocal()}".split(' ')[0]),
                    const SizedBox(
                    height: 20.0,
                    ),
                    ElevatedButton(
                    onPressed: () => {
                        _selectDate(context),
                        // ignore: avoid_print
                        print(selectedDate.day + selectedDate.month + selectedDate.year)
                    },
                    child: const Text('Pilih Tanggal'),
                    ),
                ],
                ),
            ),
            );
        }
        }
    ```

    ### Jawaban
    ![alt text](/images/p5-1-9.png)
