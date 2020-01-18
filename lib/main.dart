import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi',
      home: Scaffold(

        appBar: AppBar(
          title: Text('Hari Pertama'),
        ),

        body: AcakNama()

      ),
    );
  }
}

class AcakNama extends StatefulWidget {
  @override
  _AcakNamaState createState() => _AcakNamaState();
}

class _AcakNamaState extends State<AcakNama> {
  @override
  Widget build(BuildContext context) {
    final nama = WordPair.random();
    return Container(
      child: Center(
        child: Text(nama.asUpperCase),
      ),
    );
  }
}