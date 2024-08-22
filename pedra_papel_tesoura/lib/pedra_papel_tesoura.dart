//importar o pacote para entrada e saída
import 'dart:io';
//importar o pacote para geração de valores aleatórios
import 'dart:math';
//criar um enum que representa as opções, lembrando que o usuário pode querer sair
enum OPCAO { pedra, papel, tesoura, sair }

void exibe(String texto) {
  print(texto);
}

int pegaEntradaUsuario() {
  return int.parse(stdin.readLineSync()!);
}

bool opcaoEhValida(int opcao) {
return opcao >= 1 && opcao <= 4;
}

OPCAO mapeiaOpcao(int opcao) {
  return OPCAO.values[opcao - 1];
}

String decideResultado(OPCAO opcaoUsuario, OPCAO opcaoComputador) {
  if (opcaoUsuario == opcaoComputador) return "Empate";
  if (opcaoUsuario == OPCAO.papel && opcaoComputador == OPCAO.pedra ||
   opcaoUsuario == OPCAO.pedra && opcaoComputador == OPCAO.tesoura ||
   opcaoUsuario == OPCAO.tesoura && opcaoComputador == OPCAO.papel) {
  return "Você venceu";}
  return "Computador venceu";
}

/*
  - novos requisitos
  - permitir ao usuário que escolha quantas rodadas deseja
  - a cada rodada, dar um ponto para o vencedor
  - mostrar o vencedor do jogo total no final
  - se empatar, fazer "penaltis", ou seja, fazer uma única nova rodada até que alguém vença
  - Alterar a probabilidade de ganho: computador vence cada rodada com 60% de chance
  - Implementar o jogo inteiro utilizando funções
 */

void jogo(){

  int opcaoUsuario, opcaoComputador, quantidadePartida;
  int pontoComputador = 0;
  int pontoUsuario = 0;

  //loop que continua enquanto o usuário deseja continuar
  exibe('Olá, escolha quantas partidas deseja jogar: ');
  quantidadePartida = pegaEntradaUsuario();

  do{
    do{
    //exibe o menu
      exibe('1-Pedra\n2-Papel\n3-Tesoura\n\n4-Sair\n');
    //captura a opção do usuário, validando
      opcaoUsuario = pegaEntradaUsuario();
    }while(!opcaoEhValida(opcaoUsuario));
    //se o usuário digitar 4, sair, senão
    if(opcaoUsuario != 4){
    //sortear a opção do computador
      opcaoComputador = Random().nextInt(3) + 1;
    //mapear opção do usuário de int para enum
      OPCAO opUsuario = mapeiaOpcao(opcaoUsuario);
    //mapear opção do computador de int para enum
      OPCAO opComputador = mapeiaOpcao(opcaoComputador);
    //exibir as opções de cada um
      exibe('Você ${opUsuario.name} vs ${opComputador.name} Computador');
    //verificar se houve empate ou se alguém venceu
      String vencedor = decideResultado(opUsuario, opComputador);
    //diminui quantdade de partidas restantes
      quantidadePartida = quantidadePartida - 1;
    //mostrar o resultado, claro
      exibe('${vencedor}');
    // contar pontos e exibir placar
      if(vencedor == "Você venceu"){ pontoComputador = pontoComputador + 1;};
      if(vencedor == "Você venceu"){ pontoComputador = pontoComputador + 1;}
      exibe('~~~~~~~~~~~~~~~~~~~~~~~~~~');
    //a cada rodada, durma 3 segundos para dar tempo de ver o resultado
      sleep(Duration(seconds: 3));
    }
  }while( quantidadePartida > 0 && opcaoUsuario != 4);
  exibe('Até logo ;)');
}