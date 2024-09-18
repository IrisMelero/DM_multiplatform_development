import 'package:exibe_imagens/src/models/image_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
// passamos autilizar stateful widget pois as próximass açoes precisarão do estado do widget

class App extends StatefulWidget {
  @override
  State<App> createState() {
    return AppState(

    );
  }
}

// PXELS API KEY: 7gio4xj7mhhuBE6OAW8AyiQ8hQOroCRgTPz4Cig02jnWWZyDtKOqMSuM 

class AppState extends State<App> {
  int numeroImagens = 0;

  void obterImagem() async {
    final url = Uri.https(
      'api.pexels.com',
      '/v1/search',
        {'query': 'people', 'page': '1', 'per_page': '1'},
    );

    final req = http.Request('get', url);
      req.headers.addAll({
        'Authorization':
        'chave',
      },);
    

    req.headers.addAll({
      'Authorization': '7gio4xj7mhhuBE6OAW8AyiQ8hQOroCRgTPz4Cig02jnWWZyDtKOqMSuM'
    });

    final result = await req.send();
    final response = await http.Response.fromStream(result);
    final mapa =  json.decode(response.body);
    final imagem = ImageModel.fromJSON(mapa);
    
    // req.send().then((result){
    // // quando processamos send obtemos um futurre (promisse) e o then faz com que seja executado depois que a promessa for cumprida
    // // para evitar bloqueio de processamneto é utilizado processamento assíncrono, por isso usamos then (promessa)
    //   http.Response.fromStream(result).then((response){
    //     //print(response.body);
    //     final mapa = json.decode(response.body);
    //     final imagem = ImageModel.fromJSON(mapa);
    //     print(imagem);
    //   });
    // //print(result);
    // }); 
    //http.get(Uri.parse(''));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Minhas Imagens"),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: obterImagem,
          //() {
          //    //obterImagem();
          //   //setState(() => numeroImagens++);
          //   // numeroImagens++;
          //   //print("Estou no arquivo app.dart!");
          // },
        ),
        body: Text('$numeroImagens'), //parâmetro entregue ao construtor Scaffold
      ),
    );
  }
}