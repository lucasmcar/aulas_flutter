import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  String valor;
  TelaSecundaria({required this.valor});

  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Segunda tela"),
          backgroundColor: Colors.amberAccent,
        ),
        body: Container(
          child: Column(children: <Widget>[
            Text(
              "Segunda tela valor passado: ${widget.valor}",
              style: TextStyle(fontSize: 30),
            ),
            // ignore: deprecated_member_use
            RaisedButton(
                padding: const EdgeInsets.all(15),
                child: const Text("Ir para a primeira tela"),
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                }),
          ]),
        ));
  }
}
