import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarefas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Uber CESMAC'),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: const [
            Task('Aprender Flutter'),
            Task('Aprender Dart'),
            Task('Passear com cachorro'),
            Task('Cozinhar'),
            Task('Ir para academia'),
            Task('Fazer compras'),
            Task('Fazer feira'),
            Task('Lavar roupa'),
            Task('Tirar o lixo'),
            Task('Estudar cálculo'),
          ],
        ),
        bottomNavigationBar: Container(
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.black12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              BottomNavItem(icon: Icons.home, label: 'Início'),
              BottomNavItem(icon: Icons.grid_on_sharp, label: 'Opções'),
              BottomNavItem(icon: Icons.list_alt, label: 'Atividade'),
              BottomNavItem(icon: Icons.person, label: 'Conta'),
            ],
          ),
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
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
                Text(nome, style: const TextStyle(fontWeight: FontWeight.bold)),
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
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  const BottomNavItem({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.black, size: 28),
        Text(label, style: const TextStyle(color: Colors.black)),
      ],
    );
  }
}
