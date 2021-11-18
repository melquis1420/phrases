import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false, //remove debug banner.
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var frases = [
    'Não importa o que você decidiu. O que importa é que isso te faz feliz.',
    'Quando pensar em desistir, lembre-se porque começou. 🍀',
    'Comece onde você está. Use o que você tem. Faça o que puder',
    'Simplesmente viva a vida. 💗',
    'Que venham dias melhores.',
    'O corpo alcança o que a mente acredita.',
    'Hoje vai dar tudo certo.',
    'Dias de luz sempre retornam para quem iluminado está. ✨',
    'Nem tudo na vida são flores, mas, quando for, regue.',
    'Até o maior dos prédios começa no chão.',
    '“Não sabendo que era impossível, foi lá e fez.” (Jean Cocteau)',
    'Eu nasci para ser feliz, não para ser normal.',
    'Ninguém é igual a você, e isso pode ser sua grande arma.',
    'Jamais desista de ser feliz.',
    '“Não chore porque acabou, sorria porque aconteceu.” (Dr. Seuss)',
    'O melhor lugar do mundo é aqui e agora.',
    'Acredite: tudo tem seu tempo. 💗',
    'Corra, viva, sonhe e alcance.',
    'Seu maior medo também pode ser sua maior motivação.',
    'A força de vontade é meu superpoder.',
    '“Tudo é possível. O impossível apenas demora mais” (Dan Brown)',
    'Amanhã será um dia melhor.',
    'Você é forte, você é capaz, você pode.',
    'Até seu último suspiro, viva uma vida de tirar o fôlego. ✨',
    'A vida é curta demais para deixarmos nossos sonhos adormecidos.',
    'Pare de ter medo do que poderia dar errado e pense no que poderia dar certo.',
  ];

  void gerarFrase() {
    var numeroSorteado = Random().nextInt(frases.length);

    setState(() {
      fraseGerada = frases[numeroSorteado];
    });
  }

  var fraseGerada = 'Clique abaixo para gerar uma frase!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia "),
        backgroundColor: Colors.green[900],
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
                fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              RaisedButton(
                child: Text(
                  'Nova Fase',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.green[900],
                onPressed: gerarFrase,
              )
            ],
          ),
        ),
      ),
    );
  }
}
