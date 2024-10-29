import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Contador(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContadorWidget(),
    );
  }
}

class Contador with ChangeNotifier {
  int _valor = 0;

  int get valor => _valor;

  void incrementar() {
    _valor++;
    notifyListeners();
  }
}

class ContadorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final contador = Provider.of<Contador>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Contador com Provider'),
      ),
      body: Center(
        child: Text(
          'Contagem: ${contador.valor}',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: contador.incrementar,
        child: Icon(Icons.add),
      ),
    );
  }
}
