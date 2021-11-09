import 'package:flutter/material.dart';
import 'package:navigation_app/tela_secundaria.dart';

void main() {
  runApp(MaterialApp(
      initialRoute: "/",
      routes: {"/secundaria": (context) => TelaSecundaria(valor: "Lucas")},
      home: const TelaPrincipal()));
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela Principal"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            // ignore: deprecated_member_use
            RaisedButton(
              padding: const EdgeInsets.all(15),
              child: const Text("Ir para a segunda tela"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TelaSecundaria(valor: "Lucas")),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
