// ignore_for_file: file_names

import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({Key? key}) : super(key: key);

  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool _estaSelecionado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entrada de dados"),
      ),
      body: Column(
        children: <Widget>[
          CheckboxListTile(
            title: const Text("Comida Brasileira"),
            subtitle: const Text("Melhor comida do mundo"),
            value: _estaSelecionado,
            onChanged: (bool? valor) {
              setState(() {
                _estaSelecionado = valor!;
              });
            },
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Salvar")),
        ],
      ),
    );
  }
}
