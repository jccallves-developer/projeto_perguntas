import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoResponder,
  });

  get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['respostas']
        : [];
    return Container(
      child: Column(
        children: <Widget>[
          Questao(perguntas[perguntaSelecionada]['texto'].toString()),
          ...respostas.map((resp) {
            return Respostas(resp['texto'].toString(),
                () => quandoResponder(int.parse(resp['pontuacao'].toString())));
          }).toList(),
        ],
      ),
    );
  }
}
