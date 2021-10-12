import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Respostas(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.resolveWith((states) => Colors.blue),
          foregroundColor:
              MaterialStateProperty.resolveWith((states) => Colors.white),
        ),
        child: Text(texto),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
