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
    final nama = <WordPair>[];
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i){
        if(i.isOdd) return Divider();

        final index = i ~/2;
        if(index >= nama.length){
          nama.addAll(generateWordPairs().take(10));
        }
        return detailList(nama[index]);
      },
    );
  }
}

Widget detailList(WordPair detailNama){
  return ListTile(
    title: Text(detailNama.asUpperCase, style: TextStyle(fontSize: 20),),
  );
}