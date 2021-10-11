import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String texto;

  Respostas(this.texto);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(texto),
      onPressed: null,
    );
  }
}
