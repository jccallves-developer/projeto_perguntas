// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  // ignore: prefer_const_constructors_in_immutables
  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}
