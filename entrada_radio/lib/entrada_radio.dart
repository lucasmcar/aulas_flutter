// ignore: file_names
import 'package:flutter/material.dart';

class EntradaRadio extends StatefulWidget {
  const EntradaRadio({Key? key}) : super(key: key);

  @override
  _EntradaRadioState createState() => _EntradaRadioState();
}

class _EntradaRadioState extends State<EntradaRadio> {
  int _escolha = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio"),
      ),
      body: Column(
        children: <Widget>[
          const Text("Masculino"),
          RadioListTile(
              value: 1,
              groupValue: _escolha,
              onChanged: (int? escolha) {
                setState(() {
                  _escolha = escolha!;
                });
                // ignore: avoid_print
                print(escolha);
              }),
          const Text("Feminino"),
          RadioListTile(
              value: 2,
              groupValue: _escolha,
              onChanged: (int? escolha) {
                setState(() {
                  _escolha = escolha!;
                });
                // ignore: avoid_print
                print(escolha);
              }),
        ],
      ),
    );
  }
}
