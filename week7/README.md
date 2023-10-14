# Pemrograman Mobile

Layout dan Navigasi

Nama: Widya Indah Puspita Sari

NIM: 2141720034

Kelas: TI-3A

No Absen: 29

# Praktikum

# Praktikum 1: Membangun Layout di Flutter

## Langkah 1: Buat Project Baru

Buatlah sebuah project flutter baru dengan nama layout_flutter. Atau sesuaikan style laporan praktikum yang Anda buat.

![image](https://github.com/WidyaIn/PEMOGRAMAN_MOBILE/assets/91048154/bb4f2090-1502-4e63-8505-5e7137f15911)

## Langkah 2: Buka file lib/main.dart

Buka file main.dart lalu ganti dengan kode berikut. Isi nama dan NIM Anda di text title.

![image](https://github.com/WidyaIn/PEMOGRAMAN_MOBILE/assets/91048154/09148d51-ef2f-45e1-a46f-80e009938764)

![image](https://github.com/WidyaIn/PEMOGRAMAN_MOBILE/assets/91048154/df4c1fa9-3efc-410e-820e-f6c26329377e)

## Langkah 3: Identifikasi layout diagram
Langkah pertama adalah memecah tata letak menjadi elemen dasarnya:

Identifikasi baris dan kolom.

Apakah tata letaknya menyertakan kisi-kisi (grid)?

Apakah ada elemen yang tumpang tindih?

Apakah UI memerlukan tab?

Perhatikan area yang memerlukan alignment, padding, atau borders.

###  Langkah 4: Implementasi Title Row
Pertama, membuat kolom bagian kiri pada judul dengan menambahkan kode berikut di bagian atas metode build() di dalam kelas `MyApp`:

```Javascript
Widget titleSection = Container(
  padding: const EdgeInsets.all(...),
  child: Row(
    children: [
      Expanded(
        /* soal 1*/
        child: Column(
          crossAxisAlignment: ...,
          children: [
            /* soal 2*/
            Container(
              padding: const EdgeInsets.only(bottom: ...),
              child: const Text(
                'Wisata Gunung di Batu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Batu, Malang, Indonesia',
              style: TextStyle(...),
            ),
          ],
        ),
      ),
      /* soal 3*/
      Icon(
       ...,
        color: ...,
      ),
      const Text(...),
    ],
  ),
);
```

**Soal 1** Letakkan widget `Column` di dalam widget `Expanded` agar menyesuaikan ruang yang tersisa di dalam widget `Row`. Tambahkan properti `crossAxisAlignment` ke `CrossAxisAlignment.start` sehingga posisi kolom berada di awal baris.

**Soal 2** Letakkan baris pertama teks di dalam `Container` sehingga memungkinkan Anda untuk menambahkan padding = 8. Teks `‘Batu, Malang, Indonesia'` di dalam `Column`, set warna menjadi abu-abu.

**Soal 3** Dua item terakhir di baris judul adalah ikon bintang, set dengan warna merah, dan teks "41". Seluruh baris ada di dalam `Container` dan beri padding di sepanjang setiap tepinya sebesar 32 piksel. Kemudian ganti isi `body text ‘Hello World'` dengan variabel `titleSection` seperti berikut:

### Jawaban:
### **Kode Lengkap**
```Javascript
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /* soal 3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Widya Indah Puspita Sari - 2141720034',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection,
          ],
        ),
      ),
    );
  }
 }

```
### Hasil
![image](https://github.com/WidyaIn/PEMOGRAMAN_MOBILE/assets/91048154/a03ed865-7117-4089-98ed-c476a7d5a1c2)

## **Praktikum 2: Implementasi Button Row**

###  Langkah 1: Buat method Column _buildButtonColumn

Bagian tombol berisi 3 kolom yang menggunakan tata letak yang sama—sebuah ikon di atas baris teks. Kolom pada baris ini diberi jarak yang sama, dan teks serta ikon diberi warna primer.

Karena kode untuk membangun setiap kolom hampir sama, buatlah metode pembantu pribadi bernama `buildButtonColumn()`, yang mempunyai parameter warna, `Icon` dan `Text`, sehingga dapat mengembalikan kolom dengan widgetnya sesuai dengan warna tertentu.

```Javascript
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ···
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
```
### Jawaban:

```Javascript
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Air Terjun Coban Rondo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /* soal 3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Widya Indah Puspita Sari - 2141720034',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection,
          ],
        ),
      ),
    );
  }

  /*Build Method Button Column*/
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
```

### Langkah 2: Buat widget buttonSection
Menambhkan Fungsi untuk menambahkan ikon langsung ke kolom. Teks berada di dalam `Container` dengan margin hanya di bagian atas, yang memisahkan teks dari ikon.

Membangun baris yang berisi kolom-kolom ini dengan memanggil fungsi dan set warna, `Icon`, dan teks khusus melalui parameter ke kolom tersebut. Sejajarkan kolom di sepanjang sumbu utama menggunakan `MainAxisAlignment.spaceEvenly` untuk mengatur ruang kosong secara merata sebelum, di antara, dan setelah setiap kolom. Menambahkan kode berikut tepat di bawah deklarasi `titleSection` di dalam metode `build()`:

```Javascript
Color color = Theme.of(context).primaryColor;

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(color, Icons.call, 'CALL'),
    _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(color, Icons.share, 'SHARE'),
  ],
  ```

### Langkah 3: Tambah button section ke body
Menambahkan variabel buttonSection ke dalam `body` seperti berikut:
```Javascript         
      child: Text('Hello World'),            
      body: Column(            
      children: [            
      titleSection,
      /*Add Button Section*/
      buttonSection,            
      ],            
    ),            
```
### Hasil

![image](https://github.com/WidyaIn/PEMOGRAMAN_MOBILE/assets/91048154/71cdf7ee-b978-448a-aeb1-3f0f37cbb266)

## **Praktikum 3: Implementasi Text Section**

### Langkah 1: Buat widget textSection
Tentukan bagian teks sebagai variabel. Masukkan teks ke dalam `Container` dan tambahkan padding di sepanjang setiap tepinya. Tambahkan kode berikut tepat di bawah deklarasi `buttonSection`:
```Javascript
Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Carilah teks di internet yang sesuai '
    'dengan foto atau tempat wisata yang ingin '
    'Anda tampilkan. '
    'Widya Indah Puspita Sari - 2141720034',
    softWrap: true,
  ),
);
```
### Jawaban:
```Javascript
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Tempat wisata Alam yang satu ini cocok bagi para pecinta alam. Coban Rondo merupakan air terjun setinggi 84 meter yang terletak di '
          'ketinggian 1.135 mdpl. Menurut cerita masyarakat sekitar, nama Coban Rondo berasal dari kisah pernikahan Dewi Anjarwati dari '
          'Gunung Kawi dengan Raden Baron Kusuma dari Gunung Anjasmoro.'
          'Selain bisa menikmati keindahan dan kesegaran air terjun, Anda juga bisa menikmati berbagai fasilitas di sekitarnya. Beberapa '
          'fasilitas sekitar Coban Rondo yaitu camping ground, jogging track, tempat pemancingan, penginapan, hingga lintas sepeda gunung. '
          'Tak salah jika Coban Rondo menjadi salah satu andalan wisata Batu.'
          'Buka dari jam 08.00-16.00, Coban Rondo yang terletak di Kecamatan Pujon ini mematok harga tiket di kisaran Rp 35.000 - Rp 40.000.'
          'Oleh Widya Indah Puspita Sari - 2141720034',
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );
```

### Langkah 2: Tambahkan Variabel **Text Section** ke Body
Tambahkan widget variabel `textSection` ke dalam `body` seperti berikut:
```Javascript         
      child: Text('Hello World'),            
      body: Column(            
      children: [            
      titleSection,
      /*Add Button Section*/
      buttonSection,   
      /*Add Text Section*/
      textSection,         
      ],            
    ),            
```

### Hasil

![image](https://github.com/WidyaIn/PEMOGRAMAN_MOBILE/assets/91048154/334efe25-855f-4b3a-8a27-1cf0cccf9693)

## **Praktikum 4: Implementasi Image Section**

### Langkah 1: Siapkan Aset Gambar
Anda dapat mencari gambar di internet yang ingin ditampilkan. Buatlah folder `images` di root project **layout_flutter**. Masukkan file gambar tersebut ke folder `images`, lalu set nama file tersebut ke file `pubspec.yaml` seperti berikut:
```Javascript
  uses-material-design: true
  assets:
    - assets/gunung_panderman.jpg
```
### Langkah 2: Tambahkan gambar ke body
```Javascript
        body: Column(
          children: [
            /*Add Image Section*/
            Image.asset('assets/gunung_panderman.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
            ),
            titleSection,
            /*Add Button Section*/
            buttonSection,
            /*Add Text Section*/
            textSection,
          ],
        ),
```

### Langkah 3: Ubah Menjadi ListView
```Javascript
        body: ListView( /*Change to ListView*/
          children: [
            /*Add Image Section*/
            Image.asset('assets/CR.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
            ),
            titleSection,
            /*Add Button Section*/
            buttonSection,
            /*Add Text Section*/
            textSection,
          ],
        ),
```
### Hasil

![image](https://github.com/WidyaIn/PEMOGRAMAN_MOBILE/assets/91048154/460d865b-a278-4d90-a904-34066fa057f5)

Link Repository :
https://github.com/WidyaIn/PEMOGRAMAN_MOBILE/tree/main/week7
