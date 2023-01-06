import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: HomePage()));
}

      class HomePage extends StatefulWidget {
      @override
      State<HomePage> createState() => _HomePageState();
      }

      class _HomePageState extends State<HomePage> {
      List <dynamic> frases = [
      "Não sei quem teve a ideia cruel de colocar centenas de adolescentes em escolas carentes gerenciadas por pessoas desencantadas com a vida, mas eu admiro o sadismo.",
        "As redes sociais são um vazio de afirmações insignificantes.",
        'Você deve se achar a abelha-rainha. Fato interessante: tirando o ferrão, as abelhas morrem.',
        'As plantas mais interessantes crescem na sombra'
      ];
      String frasePadrao = "Frase inicial";
      @override
      Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.pink.shade400,

      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(15),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
        [Image(
          image: AssetImage('images/logo.png')),

          Text(frasePadrao, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic), textAlign: TextAlign.center, ),
          SizedBox(
            width: 100,
          height: 50,
          child: ElevatedButton(
       onPressed: (){
            setState(() {
                var random = new Random();
                var x = random.nextInt(frases.length);
                frasePadrao = frases[x];
              });
            },
              child: Text("Gerar frase", textAlign: TextAlign.center),

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink.shade400,
              textStyle: TextStyle(fontSize: 20),
              )
            ),
          )
          ]
        )

      )

      );

    }


}
