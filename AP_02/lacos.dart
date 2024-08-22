import 'dart:io';
//espécie de classe - novo tipo de dado - cira variáveis de refrência - conjuntos enumerados
enum DiaSemana{SEGUNDA, TERCA, QUARTA, QUINTA, SEXTA, SABADO, DOMINGO}

void main (){

//for 
  // for (int i = 0; i < 10; i++) {
  //   print(i);
  // }


// for each
  // const nomes = ['José','Pedro', 'Maria'];
  // for(final nome in nomes){
  //   print(nome);
  // }

// loop com while
  // int contador = 0;
  // while (contador <= 10) {
  //   print("Contador: $contador");
  //   contador++;
  // }

//do/while
  // int i = 0;
  // do {
  //   print("O valor de i é $i");
  //   i++;
  // } while (i < 10);

// lendo um enum
  // print(DiaSemana.values);
  // DiaSemana dia = DiaSemana.SEGUNDA;
  // print(dia.name);
  // switch (dia){
  //   case DiaSemana.SEGUNDA:
  //     print("Nããããããããooooooooooooo!!!!!!");
  //   case DiaSemana.TERCA:
  //     print(":(");
  //   case DiaSemana.QUARTA:
  //     print(":|");
  //   case DiaSemana.QUINTA:
  //     print(":)");
  //   case DiaSemana.SEXTA:
  //     print("Eeeeeeeeeeeeeeeeeeeee!!!!!!");
  //   case DiaSemana.SABADO:
  //     print("=DDDDDD");
  //   case DiaSemana.DOMINGO:
  //     print(" :):");
  // }

// entrada/saida de dados
  // Exibe o texto e pula uma linha
    stdout.writeln('Digite o seu nome: ');
  // importante - não tomar Null Pointer Exception
  // Lê o que o usuário digitou devolve uma string
    var nome = stdin.readLineSync()!; // ! - garante ao compilador que a variável não será nula 
  // Exibe o texto sem pular uma linha
    stdout.write('Olá, $nome!');
  // Conversão - como devolve sempre string, tem que converter usando parse
    int idade = int.parse(stdin.readLineSync()!);
  // ou então - ? indica string ou null
    String? idadeOp = stdin.readLineSync();
    if (idadeOp != null){
      int age = int.parse(idadeOp);
    }
}
