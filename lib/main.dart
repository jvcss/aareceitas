import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  List<Receita> receitas = [
    Receita(
      "Smoothie de Banana e Espinafre",
      ["Banana", "Folhas de espinafre", "Água"],
      "1. Bata todos os ingredientes no liquidificador até obter uma consistência homogênea. \n2. Sirva gelado.",
    ),
    Receita(
      "Salada de Abacate e Lentilha",
      ["Abacate", "Lentilha cozida", "Tomate", "Cebola roxa", "Azeite de oliva", "Sal e pimenta a gosto"],
      "1. Corte o abacate, o tomate e a cebola em cubos. \n2. Misture todos os ingredientes em uma tigela. \n3. Tempere com azeite de oliva, sal e pimenta a gosto.",
    ),
    Receita(
      "Salmão Grelhado com Cúrcuma",
      ["Filé de salmão", "Cúrcuma em pó", "Sal e pimenta a gosto", "Azeite de oliva"],
      "1. Tempere o filé de salmão com sal, pimenta e cúrcuma em pó. \n2. Aqueça uma frigideira com azeite de oliva. \n3. Grelhe o salmão por alguns minutos de cada lado, até ficar dourado e cozido por dentro.",
    ),
    // Adicione mais receitas conforme desejar
  ];

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
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

class Receita {
  final String nome;
  final List<String> ingredientes;
  final String modoPreparo;

  Receita(this.nome, this.ingredientes, this.modoPreparo);
}
