import 'package:flutter/material.dart';
import './botao.dart';

class appBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia "),
        backgroundColor: Colors.green,
      ),
      body: Center(
        //centraliza todo o container.
        child: Container(
          padding: EdgeInsets.all(16),
          //width: double.infinity, // ocupa 100% do espaço disponível.
          /*decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.amber),
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              Text(
                "Clique abaixo para gerar uma frase!",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              botao() //chama a classe botão
            ],
          ),
        ),
      ),
    );
  }
}
