
import 'dart:math';

import 'package:appcaraoucoroa/Resultado.dart';
import 'package:flutter/material.dart';

class CaraOuCoroa extends StatefulWidget {
  @override
  _CaraOuCoroaState createState() => _CaraOuCoroaState();
}

class _CaraOuCoroaState extends State<CaraOuCoroa> {
  void _resultadoCaraOuCoroa(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Resultado(["moeda_cara", "moeda_coroa"][Random().nextInt(2)])
        ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: Text("Jogo Cara ou Coroa"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Color(0xff61bd86),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Padding(
              padding: EdgeInsets.all(26),
                child: Image.asset("images/logo.png"),
            ),

            Padding(
              padding: EdgeInsets.all(26),
              child:
              GestureDetector(
                child: Image.asset("images/botao_jogar.png"),
                onTap: _resultadoCaraOuCoroa,
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar:
      BottomAppBar(
        color: Colors.teal,
        child: Padding(
          padding: EdgeInsets.all(6),
          child: Row(
            children: <Widget>[
              Text("@CarlosBrunoFreitasSardinha",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white60,
                    fontWeight: FontWeight.bold
                ),)
            ],
          ),
        ),
      ),
    );
  }
}
