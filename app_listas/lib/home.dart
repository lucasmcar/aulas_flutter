import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _itens = [];

  void _carregarItens() {
    _itens = [];
    for (int i = 0; i <= 10; i++) {
      Map<String, dynamic> item = Map();
      item["titulo"] = "Titulo ${i}";
      item["descricao"] = "Descricao ${i}";
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _carregarItens();
    return Scaffold(
      appBar: AppBar(title: const Text("Lista"), backgroundColor: Colors.blue),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView.builder(
              itemCount: _itens.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(_itens[index]["titulo"]),
                            content: Text(_itens[index]["descricao"]),
                            actions: <Widget>[
                              FlatButton(
                                onPressed: () {},
                                child: Text("Sim"),
                              ),
                              FlatButton(onPressed: () {}, child: Text("Não"))
                            ],
                          );
                        });
                  },
                  onLongPress: () {},
                  title: Text(_itens[index]["titulo"]),
                  subtitle: Text(_itens[index]["descricao"]),
                );
              })),
    );
  }
}
