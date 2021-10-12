import 'package:flutter/material.dart';

class SuccessMessage extends StatelessWidget {
  final String texto;
  SuccessMessage(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(80),
      child: Text(
        texto,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
