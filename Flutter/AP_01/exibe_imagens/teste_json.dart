import "dart:convert";

class PessoaModel{
  // precisa definir se é obrigatório(?), inicialização tardia (late), inicialização normal (=)
  // pede o late pq neste caso o constutor ainda não estava definido
  late String nome;
  late int idade;
  // construtor
  PessoaModel(this.nome, this.idade);

  //construtores nomeados
  PessoaModel.fromJSON(pessoaJSON){
    var pessoaMapa = jsonDecode(pessoaJSON);
    nome = pessoaMapa['nome'];
    idade = pessoaMapa['idade'];
  }
}
void main(){

  var pessoaJSON = '{"nome": "Ana", "idade": 22}';

  var pessoaDecoded = json.decode(pessoaJSON);
  // novo construto com manutenção direta pela classe do PessoaModel / construtor nomeado "PessoaModel.fromJSON"
  var pessoa = PessoaModel.fromJSON(pessoaDecoded);



  // construtor não prático com alta manutenção
  // var pessoaMapa = json.decode(pessoaJSON);
  // var pessoaModel = PessoaModel(
  //   pessoaMapa['nome'],
  //   pessoaMapa['idade']
  // );
  // print(pessoaModel.nome);

  //text block para permitir quebra de linha em string '''
//   var veiculosJSON = '''[ 
//     {
//       "marca": "VW",
//       "modelo": "Gol",
//       "preco": 20000
//     },
//     {
//       "marca": "Chevrolet",
//       "modelo": "Fusca",
//       "preco": 15000
//     }
// ]''';
  // // converção com json.decode
  // var veiculos = json.decode(veiculosJSON);
  // print(veiculos);
  // // for (final veiculo in veiculos){
  // //   print(veiculo);
  // //   print(veiculo['marca']);
  // //   print(veiculo['modelo']);
  // // }
  // // adicionar um preço a cada veiculo
  // // mostrar o preco medio
  // double media = 0.0;
  // for (final veiculo in veiculos){
  //   media += veiculo['preco'];
  //   // {} : defeinir expressão
  //   // toStringAsFixed: reduz para duas casase trans forma em string
  //   print(veiculos.length == 0 ? "Estoque vazio" : "Valor medio: ${(media / veiculos.length).toStringAsFixed(2)}");
  // }

  // var pessoa = json.decode(pessoaJSON);
  // print(pessoa.runtimeType);
  // print(pessoa['nome']);
  // print(pessoa['idade']);
  // print(pessoa.nome);

}

