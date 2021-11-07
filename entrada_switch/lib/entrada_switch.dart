import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({Key? key}) : super(key: key);

  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _escolhaUsuario = false;
  bool _escolhaUsuarioConf = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Switch")),
      body: Container(
        child: Column(
          children: <Widget>[
            SwitchListTile(
                title: const Text("Receber notificações"),
                value: _escolhaUsuario,
                onChanged: (bool? valor) {
                  setState(() {
                    _escolhaUsuario = valor!;
                  });
                }),
            SwitchListTile(
                title: const Text("Receber notificações conf"),
                value: _escolhaUsuarioConf,
                onChanged: (bool? valor) {
                  setState(() {
                    _escolhaUsuarioConf = valor!;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
