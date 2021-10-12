import 'package:flutter/material.dart';

class SuccessMessage extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;
  SuccessMessage(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Sua pontuação é ' + pontuacao.toString() + '!',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: Text(
              fraseResultado,
              style: TextStyle(fontSize: 28),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: quandoReiniciarQuestionario,
            child: Text('Reiniciar?'),
          ),
        ],
      ),
    );
  }
}
