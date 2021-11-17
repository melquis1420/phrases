import 'package:flutter/material.dart';

class botao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        "Nova Frase",
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      color: Colors.green,
      onPressed: () {},
    );
  }
}
