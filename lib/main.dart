import 'dart:math';

import 'package:aareceitas/receitas.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Receitas para Cólica Menstrual',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  late Receita receitaAtual;

  @override
  void initState() {
    super.initState();
    receitaAtual = _obterReceitaAleatoria();
  }

  Receita _obterReceitaAleatoria() {
    Random random = Random();
    return receitas[random.nextInt(receitas.length)];
  }

  void _exibirProximaReceita() {
    setState(() {
      receitaAtual = _obterReceitaAleatoria();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Receitas para Cólica Menstrual'),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  receitaAtual.nome,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  "Ingredientes: ${receitaAtual.ingredientes.join(', ')}",
                  style: const TextStyle(fontSize: 16.0),
                ),
                const SizedBox(height: 8.0),
                Text(
                  "Modo de Preparo:\n${receitaAtual.modoPreparo}",
                  style: const TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _exibirProximaReceita,
        tooltip: 'Próxima Receita',
        child: const Icon(Icons.flare),
      ),
    );
  }
}
