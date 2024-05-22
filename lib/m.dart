import 'package:flutter/material.dart';

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  TeksUtama({super.key});

  @override
  State<StatefulWidget> createState() => state;
}

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'Amin Suratun Khasanah',
    'Julia Kurnia Mubarokah',
    'Wahyu Triyono',
    'Rusmiati',
    'Alfiami Solihatun',
  ];
  var listWarna = [
    Colors.pink,
    Colors.blue,
    Colors.purple,
    Colors.teal,
    Colors.indigo,
    Colors.deepPurple,
    Colors.orange,
    Colors.red,
    Colors.yellow
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16.0),
        Text(
          'Perkenalkan Nama Saya',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.normal,
            color: Color.fromARGB(212, 99, 8, 84),
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          listNama[index % listNama.length],
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: listWarna[index % listWarna.length],
          ),
        )
      ],
    );
  }

  void incrementIndex() {
    setState(() {
      index++;
    });
  }
}

void main() {
  TeksUtama teksUtama = TeksUtama();
  runApp(MaterialApp(
      title: 'Halo Dunia',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue[800],
          title: const Text(
            'Halo Dunia',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(child: teksUtama),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Random',
          onPressed: teksUtama.state.incrementIndex,
          child: const Icon(Icons.refresh),
        ),
      )));
}