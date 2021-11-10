import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String cep = "91920130";
  String url = "https://viacep.com.br/ws/91920130/json/";

  _recuperarCep() async {
    String url = "https://viacep.com.br/ws/91920130/json/";
    http.Response response;

    response = await http.get(url);
    Map<String, dynamic> retorno = json.decode(response.body);
    String logradouro = retorno['logradouro'];
    String complemento = retorno['complemento'];
    String bairro = retorno['bairro'];

    print("recuperando dados: ${logradouro}, ${complemento}, ${bairro}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Consumo web service")),
      body: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              RaisedButton(
                  child: const Text("Acessar"), onPressed: _recuperarCep),
            ],
          )),
    );
  }
}
