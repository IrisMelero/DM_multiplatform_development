import 'package:colecoes/colecoes.dart' as colecoes;

void main(List<String> arguments) {
  // final nomes = ['João', 'Pedro', 'Maria'];
  // print(nomes);
  // print(nomes.toString());
  // print(nomes.runtimeType);
  // print(nomes[0]);
  // // Range error - posição inválida
  //   print(nomes[-1]);
  //   print(nomes[3]);

  // // iterações com listas
  // //for comum
  // for (int i = 0; i < nomes.length; i++){
  //   print(nomes[i]);
  // }
  // //for each
  // for (final nome in nomes){
  //   print(nome);
  // }

  // // aramazenando objetos de vários tipos
  // // se a lista é de strings int daria erro 
  // //   nomes[0] = 2;
  // // mas se a lista tiver tipo variável
  // var itensDiversos = ['Ana', true, 2, 2.5];
  // print(itensDiversos);
  // //List<Object>
  // print(itensDiversos.runtimeType);
  // //agora pode
  // itensDiversos[0] = false;
  // print(itensDiversos);

  // exercicio mega sena
  //colecoes.exercicioMegaSena();

  // Tuplas 
  var tupla = ('Ana', 18, true, 43);
  print(tupla);
  print(tupla.runtimeType);
  print(tupla.$1); //acessando posição .$

  // set 
  // {1, 2} = {2, 1} = {1, 1, 1, 2, 2, 2, 2}
  var teste = <String, int> {}; //dicionário com tipos definidos
   
  // uniao intersecção e diferença
  var A = {1, 2, 3, 4};
  var B= {1, 3, 5, 7};
  print(A.union(B));
  print(A.intersection(B));
  print(A.difference(B)); // não comultativa
  print(A.difference(B));

  // mapas
  var lembretes = { //com inferencia de tipo
    1: 'fazer café',
    2: 'Ana'
  };

  Map<String, int> m1 = {}; //sem inferência
  var m2 = <String, int> {}; //faz a mesma coisa que a linha de cima

  // não há repetição de chaves
  var pessoa = <String, dynamic> { // objetc não é reconhecido pelo compilador então não temo suport de autocomplete...
    'nome': "ana",
    'idade': 18
  };
  pessoa['nome'] = "Ana";
  pessoa['nome'] = "Cristina"; // substitui ana por cristina em nome

  var nome = pessoa['nome'] as String; // tronando tipo da chave conhecida em tempo de execução

  // for each iterando as keys
  final chave = pessoa.keys;
  for( final chaves in pessoa.keys){
    print(pessoa[chaves]);
  }
  // values
  for( final valores in pessoa.values){
    print(pessoa[valores]);
  }
  // entries
  for( final entradas in pessoa.entries){
    print(entradas);
    print(entradas.key);
    print(entradas.value);
  }

  // coleções de coleções 
    // armazenamento de uma coleção de filmes
  var filmes = < Map<String, Object?> > []; // List < Map<String, Object?> >
  
}
