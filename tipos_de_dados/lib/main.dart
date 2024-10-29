import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Variáveis e Tipos de Dados'),
        ),
        body: Center(
          child: Text(
            exemploVariaveis(),
            style: TextStyle(fontSize: 20), // Estilização do texto
            textAlign: TextAlign.center,   // Alinhamento do texto
          ),
        ),
      ),
    );
  }

  String exemploVariaveis() {
    var idade = 25;
    idade=20;
    var altura = 1.75;
    var ativo = true;
    var nome = 'Carlos';

    return 'Nome: $nome, Idade: $idade, Altura: $altura m, Ativo: $ativo';
  }
}
