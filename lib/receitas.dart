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
    "Salada de folhas verdes", 
    ["folhas verdes escuras (couve, espinafre, agrião)", "banana", "abacate", "amêndoas", "castanha do Pará", "grão de bico", "lentilha", "feijão preto"], 
    "Misture as folhas verdes com banana, abacate, amêndoas, castanha do Pará, grão de bico, lentilha e feijão preto. Tempere a gosto e sirva como acompanhamento."
  ),
  Receita(
    "Chá de Camomila Relaxante",
    ["Camomila (flores secas ou saquinho de chá)", "Água"],
    "1. Ferva água em uma chaleira. \n2. Coloque as flores secas de camomila em uma xícara ou bule. \n3. Despeje a água fervente sobre as flores e cubra por cerca de 5 minutos. \n4. Coe e sirva o chá de camomila quente. Adicione mel a gosto, se desejar."
  ),
  Receita(
    "Sardinha Grelhada com Salada",
    ["Sardinhas frescas", "Sal e pimenta a gosto", "Azeite de oliva", "Mix de folhas verdes (espinafre, alface, rúcula)", "Tomate cereja", "Cebola roxa", "Vinagre balsâmico"],
    "1. Tempere as sardinhas com sal, pimenta e um fio de azeite de oliva. \n2. Grelhe as sardinhas em uma grelha ou frigideira até ficarem douradas dos dois lados. \n3. Em uma tigela, misture as folhas verdes, os tomates cereja e a cebola roxa. \n4. Tempere a salada com vinagre balsâmico e azeite de oliva. \n5. Sirva as sardinhas grelhadas acompanhadas da salada."
  ),
  Receita(
    "Smoothie de Frutas Vermelhas com Linhaça",
    ["Frutas vermelhas (morangos, framboesas, mirtilos)", "Leite de amêndoas (ou leite de sua preferência)", "Semente de linhaça", "Mel (opcional)"],
    "1. Combine as frutas vermelhas, o leite de amêndoas e a semente de linhaça no liquidificador. \n2. Adicione mel a gosto, se desejar um toque de doçura. \n3. Bata até obter uma mistura cremosa e homogênea. \n4. Sirva o smoothie gelado em um copo decorado com algumas frutas inteiras para enfeitar."
  ),
  Receita(
    "Gengibre e Limão Infusão",
    ["Gengibre fresco", "Limão", "Água", "Mel (opcional)"],
    "1. Descasque e corte o gengibre fresco em rodelas finas. \n2. Ferva água em uma panela e adicione as rodelas de gengibre. \n3. Deixe ferver por alguns minutos, depois desligue o fogo e deixe descansar por mais alguns minutos para infusionar. \n4. Esprema o suco de limão na infusão e adicione mel a gosto, se desejar. \n5. Coe e sirva a infusão quente."
  ),
  Receita(
    "Hummus de Grão de Bico",
    ["Grão de bico cozido", "Tahine (pasta de gergelim)", "Suco de limão", "Alho", "Azeite de oliva", "Cominho em pó", "Sal e pimenta a gosto"],
    "1. Em um processador de alimentos, combine o grão de bico cozido, o tahine, o suco de limão, o alho picado, o azeite de oliva, o cominho em pó, o sal e a pimenta. \n2. Triture até obter uma pasta homogênea e cremosa. \n3. Transfira o hummus para um recipiente e sirva com vegetais crus, como cenoura, pepino e pimentão, ou com pães integrais."
  )

];
