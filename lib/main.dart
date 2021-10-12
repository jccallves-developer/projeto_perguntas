import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';
import 'successMessage.dart';
import './questionario.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita',
      'respostas': [
        {'texto': 'Preto', 'nota': 10},
        {'texto': 'Vermelho', 'nota': 5},
        {'texto': 'Verde', 'nota': 3},
        {'texto': 'Branco', 'nota': 1},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito',
      'respostas': [
        {'texto': 'Coelho', 'nota': 10},
        {'texto': 'Cobra', 'nota': 5},
        {'texto': 'Elefante', 'nota': 3},
        {'texto': 'Leão', 'nota': 1}
      ],
    },
    {
      'texto': 'Qual é o seu instrutor favorito',
      'respostas': [
        {'texto': 'Maria', 'nota': 10},
        {'texto': 'João', 'nota': 5},
        {'texto': 'Léo', 'nota': 3},
        {'texto': 'Pedro', 'nota': 1},
      ],
    }
  ];

  get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: temPerguntaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaSelecionada,
                  quandoResponder: _responder)
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
