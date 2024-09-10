import 'package:flutter/material.dart';
import 'src/app.dart';

void main(){
  var app = App();
  runApp(app);
}



// void main(){
//   var app = MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: const Text("Minhas Imagens"),
//       ),
//       floatingActionButton: FloatingActionButton(
//         //child: const Text("+"),
//         child: const Icon(Icons.add),
//         onPressed: () {
//           print("Hello!");
//         },
//       ),
//     ),
//   );
//   runApp(app);
// }


// Exemplos do dart pad
// final f1 = (){
// print('f1');
// };
// final f2 = (){
// print('f2');
// return "f2";
// };
// final f3 = () => print("f3");
// //parece uma função que pode ter várias linhas
// //mas é uma função que devolve um set ou map
// //delimitado por {}
// final f4 = () => {
// //esse print não vale pois {} não é o corpo de
// //uma função
// // print ("E agora?");
// };
// //devolve um Set com 1 e 2
// final f5 = () => {
// 1, 2
// }
// //devolve um mapa com nome: 'Ana'
// final f6 = () => {
// 'nome': 'Ana'
// };
// //sem inferência de tipo: funções são do tipo Function
// Function f7 = (){
// print('f7');
// };
// //funções podem receber funções
// final f8 = (f){
// print('f8');
// //chamando a função recebida
// f();