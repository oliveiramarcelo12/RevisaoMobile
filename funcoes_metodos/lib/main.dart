import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

  // Função anônima que exibe uma saudação
  var saudacaoAnonima = (String nome) {
    print('Olá, $nome!'); // Exibe a saudação no console
  };

  // Chamando a função anônima
  saudacaoAnonima('Função anônima');

  // Chamada da função de multiplicação
  int resultado = multiplicacao(3, 4);
  print('Multiplicação: $resultado'); // Exibe o resultado no console
}

// Função de multiplicação
int multiplicacao(int a, int b) => a * b;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Funções e Multiplicação'),
        ),
        body: Center(
          child: Text('Veja o resultado no console'), // Texto informativo
        ),
      ),
    );
  }
}
