import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  const EntradaSlider({Key? key}) : super(key: key);

  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  double valor = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Slider(
                value: valor,
                min: 0,
                max: 10,
                label: "Valor Selecionado ${valor}",
                divisions: 10,
                onChanged: (double novoValor) {
                  setState(() {
                    valor = novoValor;
                  });
                }),
            ElevatedButton(
              onPressed: () {
                print(valor.toString());
              },
              child: const Text("Salvar"),
            ),
          ],
        ),
      ),
    );
  }
}
