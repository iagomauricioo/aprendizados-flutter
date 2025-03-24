import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uber CESMAC',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Uber CESMAC'),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
            children: [
          Task('Aprender Flutter'),
          Task('Aprender dart'),
          Task('Passear com cachorro'),
          Task('Cozinhar'),
          Task('Cozinhar'),
          Task('Cozinhar'),
          Task('Cozinhar'),
          Task('Cozinhar'),
          Task('Cozinhar'),
          Task('Cozinhar'),
          Task('Cozinhar'),
          Task('Cozinhar'),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Adicione a ação do botão flutuante aqui!
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class Task extends StatelessWidget {
  final String nome;
  const Task(this.nome, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Stack(children: [
        Column(
          children: [
            Container(
              color: Colors.black26,
              width: 5000,
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.white70,
                    width: 100,
                    height: 120,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(nome),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(5, (index) => const Icon(Icons.star, color: Colors.amber, size: 20)),
                      )
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Icon(Icons.arrow_drop_up, color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              width: 5000,
              height: 30,
            ),
          ],
        )
      ]),
    );
  }
}
