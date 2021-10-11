// ignore_for_file: prefer_const_constructors, duplicate_ignore, avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  void responder() {
    print('Pergunta respondida!');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita',
      'Qual é o seu animal favorito'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: () {
                print('Pergunta respondida 2 foi selecionada!');
              },
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: () => print('Resposta 3!'),
            ),
          ],
        ),
      ),
    );
  }
}
