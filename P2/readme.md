## Soal 1
Modifikasi kode pada baris 3 di editor favorit Anda agar output sesuai yang diminta.  
Gantilah "Fulan" dengan nama Anda.

![Contoh Soal](/img/image-1.png)  
**Output yang diminta:**  
![Contoh Output](/img/image-2.png)

**Jawaban:**  
![Jawaban](/img/image.png)

---

## Soal 2
**Mengapa penting memahami bahasa Dart sebelum menggunakan Flutter?**

**Jawaban:**  
Dart adalah bahasa utama untuk Flutter. Memahami Dart membantu dalam menulis kode yang efisien, memahami struktur aplikasi, dan memanfaatkan fitur-fitur Flutter secara optimal.

---

## Soal 3
**Rangkuman poin penting dari codelab Flutter:**

- Dart adalah bahasa pemrograman utama untuk Flutter.
- Flutter memudahkan pembuatan aplikasi mobile lintas platform.
- Widget adalah komponen utama dalam membangun UI di Flutter.
- Hot reload mempercepat proses pengembangan aplikasi.

---

## Soal 4
**Perbedaan Null Safety dan Late Variable di Dart:**

- **Null Safety:**  
    Memastikan variabel tidak bernilai null kecuali diizinkan. Membantu mencegah error runtime akibat nilai null.

    ```dart
    String? nama; // Bisa null
    String alamat = "Jakarta"; // Tidak bisa null
    ```

- **Late Variable:**  
    Variabel diinisialisasi nanti, tapi pasti sebelum digunakan.

    ```dart
    late String nama;
    nama = "Andi";
    print(nama); // Output: Andi
    ```