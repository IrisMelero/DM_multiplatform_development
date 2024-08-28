import 'dart:math';
import 'dart:io';

int calculate() {
  return 6 * 7;
}

int exercicioSoma() {
  return 0;
}

void exercicioMegaSena() {
  List<int> aposta = [ ];
  List<int> sorteio = [ ];

  // menu de opções
  print("\nSeja bem vinda á casa de apostas Gatinho da sorte !\nPronta para fazer seu jogo?\nSiga em frente e boa sorte!!\n\n");

  // recebe aposta usuário
  while(aposta.length < 6 ){
    print(" Insira o  número que deseja apostar: ");
    var numeroApostado = int.parse(stdin.readLineSync()!);
    if ( numeroApostado > 0 && numeroApostado <= 60 && !aposta.contains(numeroApostado)){
      aposta.add(numeroApostado);
      }
    else { print("O número escolhido ja foi escolhido ou não está incluso no alcance do jogo, por favor escolha outro número");}
  }

  // gera lista sorteada
  do{
    var numeroSorteado = Random().nextInt(60) + 1;
    if (!sorteio.contains(numeroSorteado)){ sorteio.add(numeroSorteado);}
  }while(sorteio.length < 6 );

  // ordenando os termos de cada lista
  aposta.sort();
  sorteio.sort();

  // exibe apostas do usuário e numeros do sorteio ambos ordenados
  print("Os números que você apostou foram $aposta");
  print("Os números sorteados foram $sorteio");

  // exibe quanto números acertou
  List<int> resultado = [];
  int numeroAcertos = 0;
  for( var numero in aposta){
    for ( var numeroSorteio in sorteio){
      if(numero == numeroSorteio ){
        resultado.add(numero);
        numeroAcertos ++;
      } 
    }
  }
  print("Voce acertou $numeroAcertos números, sendo eles:");
  print("$resultado");

  print("Obrigada por apostar conosco, volte sempre !\n\n0 - sair\n1 - apostar novamente\n");
  int novaAposta = int.parse(stdin.readLineSync()!);
  if( novaAposta == 1){ exercicioMegaSena(); }
  else{ exit(novaAposta); }
}