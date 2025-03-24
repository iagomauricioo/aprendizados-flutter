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
            Task('Aprender Flutter no café da manhã comendo sucrilhos', urlImagem: 'https://images.pexels.com/photos/4385547/pexels-photo-4385547.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            Task('Passear com cachorro', urlImagem: 'https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?auto=compress&cs=tinysrgb&w=600',),
            Task('Cozinhar', urlImagem: 'https://images.pexels.com/photos/2403391/pexels-photo-2403391.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',),
            Task('Ir para academia', urlImagem: 'https://images.pexels.com/photos/31271772/pexels-photo-31271772/free-photo-of-treinamento-de-boxeador-focado-em-ambientes-fechados-na-academia.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',),
            Task('Fazer compras', urlImagem: 'https://images.pexels.com/photos/1050244/pexels-photo-1050244.jpeg?auto=compress&cs=tinysrgb&w=600',),
            Task('Aprender Dart', urlImagem: 'https://images.pexels.com/photos/4385547/pexels-photo-4385547.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
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
  final String? urlImagem;
  const Task(this.nome, {this.urlImagem, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = urlImagem ?? 'https://images.pexels.com/photos/392018/pexels-photo-392018.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';
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
              width: 100,
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    child: Text(
                      nome,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) => const Icon(Icons.star, color: Colors.amber, size: 20)),
                  )
                ]
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
