import 'package:flutter/material.dart';

class SuccessMessage extends StatelessWidget {
  final int pontuacao;
  SuccessMessage(this.pontuacao);

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
      child: Center(
        child: Text(
          fraseResultado,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
