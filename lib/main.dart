// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

// ignore: use_key_in_widget_constructors
class PerguntaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita',
      'Qual é o seu animal favorito'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text('Perguntas'),
        ),
        // ignore: prefer_const_constructors
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
