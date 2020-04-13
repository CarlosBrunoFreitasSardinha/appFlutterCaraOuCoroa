import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  String result = "";
  Resultado([this.result="Coroa"]);
  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff61bd86),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 26),
              child:
              Image.asset("images/${widget.result}.png"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 26),
              child:
              GestureDetector(
                child: Image.asset("images/botao_voltar.png"),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}

