import 'package:flutter/material.dart';

void main() {
  var pessoa = Pessoa('Carlos', 30);
  pessoa.mostrar();

  if (pessoa.ehMaiorDeIdade()) {
    print('${pessoa.nome} é maior de idade.');
  } else {
    print('${pessoa.nome} é menor de idade.');
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PessoaScreen(),
    );
  }
}

class Pessoa {
  String _nome;
  int _idade;

  Pessoa(this._nome, this._idade);

  String get nome => _nome; // Getter para nome
  int get idade => _idade;   // Getter para idade

  void mostrar() {
    print('Nome: $nome, Idade: $idade');
  }

  bool ehMaiorDeIdade() {
    return _idade >= 18;
  }
}
4
class PessoaScreen extends StatelessWidget {
  final Pessoa pessoa = Pessoa('Carlos', 30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Classe Pessoa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nome: ${pessoa.nome}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Idade: ${pessoa.idade}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              pessoa.ehMaiorDeIdade()
                  ? '${pessoa.nome} é maior de idade.'
                  : '${pessoa.nome} é menor de idade.',
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
