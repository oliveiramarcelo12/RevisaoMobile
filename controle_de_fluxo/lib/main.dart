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
          title: Text('Controle de Fluxo'),
        ),
        body: Center(
          child: Text(exemploControleFluxo()),
        ),
      ),
    );
  }

  String exemploControleFluxo() {
    String dia = 'terça';
    String resultado;

    switch (dia) {
      case 'segunda':
        resultado = 'Hoje é segunda-feira';
        break;
      case 'terça':
        resultado = 'Hoje é terça-feira';
        break;
      default:
        resultado = 'Dia não reconhecido';
    }

    return resultado; // Retorna o resultado da verificação
  }



}


