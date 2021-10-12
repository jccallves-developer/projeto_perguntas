import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';
import './successMessage.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual é o seu animal favorito',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'texto': 'Qual é o seu instrutor favorito',
      'respostas': ['Maria', 'João', 'Léo', 'Pedro'],
    }
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada].cast()['respostas']
        : [];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: temPerguntaSelecionada
              ? Column(
                  children: <Widget>[
                    Questao(
                        _perguntas[_perguntaSelecionada]['texto'].toString()),
                    ...respostas.map((t) => Respostas(t, _responder)).toList(),
                  ],
                )
              : SuccessMessage('Parabéns!')),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  // ignore: annotate_overrides
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
