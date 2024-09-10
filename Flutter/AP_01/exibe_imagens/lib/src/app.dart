import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Minhas Imagens"),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() => numeroImagens++);
            // numeroImagens++;
            //print("Estou no arquivo app.dart!");
          },
        ),
        body: Text('$numeroImagens'), //parâmetro entregue ao construtor Scaffold
      ),
    );
  }
}