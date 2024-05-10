class Receita {
  final String nome;
  final List<String> ingredientes;
  final String modoPreparo;

  Receita(this.nome, this.ingredientes, this.modoPreparo);
}

List<Receita> receitas = [
  
  Receita(
    "Smoothie de Banana e Espinafre",
    ["Banana", "Folhas de espinafre", "Água"],
    "1. Bata todos os ingredientes no liquidificador até obter uma consistência homogênea. \n2. Sirva gelado."
  ),
  Receita(
    "Salada de Abacate e Lentilha",
    ["Abacate", "Lentilha cozida", "Tomate", "Cebola roxa", "Azeite de oliva", "Sal e pimenta a gosto"],
    "1. Corte o abacate, o tomate e a cebola em cubos. \n2. Misture todos os ingredientes em uma tigela. \n3. Tempere com azeite de oliva, sal e pimenta a gosto."
  ),
  Receita(
    "Salmão Grelhado com Cúrcuma",
    ["Filé de salmão", "Cúrcuma em pó", "Sal e pimenta a gosto", "Azeite de oliva"],
    "1. Tempere o filé de salmão com sal, pimenta e cúrcuma em pó. \n2. Aqueça uma frigideira com azeite de oliva. \n3. Grelhe o salmão por alguns minutos de cada lado, até ficar dourado e cozido por dentro."
  ),

  Receita(
    'Salada de folhas verdes', 
    ['folhas verdes escuras (couve, espinafre, agrião)', 'banana', 'abacate', 'amêndoas', 'castanha do Pará', 'grão de bico', 'lentilha', 'feijão preto'], 
    'Misture as folhas verdes com banana, abacate, amêndoas, castanha do Pará, grão de bico, lentilha e feijão preto. Tempere a gosto e sirva como acompanhamento.')
  // Adicione mais receitas conforme desejar
];
