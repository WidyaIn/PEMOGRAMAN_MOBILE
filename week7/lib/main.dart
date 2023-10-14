import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget titleSection = Container(
    padding: const EdgeInsets.all(32), // soal 3
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // soal 1
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8), // soal 2
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
                  color: Colors.grey[500], // soal 2
                ),
              ),
            ],
          ),
        ),
        Icon(
          Icons.star, // soal 3
          color: Colors.red[500], // soal 3
        ),
        const Text('41'), // soal 3
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

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
          textAlign: TextAlign.justify),
    );

    return MaterialApp(
      title: 'Flutter layout: Widya Indah Puspita Sari - 2141720034',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset('assets/CR.jpg',
                width: 600, height: 240, fit: BoxFit.cover),
            titleSection,
            buttonSection,
            textSection
          ], // soal 3
        ),
      ),
    );
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
