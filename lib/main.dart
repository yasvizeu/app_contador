import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Container(color: const Color.fromARGB(255, 75, 0, 94),
    alignment: Alignment.center,
    child: Text('Olá, mundo'),)
  );;
  }
}

/*Crie um novo stateless com o nome HomePage
Tranfira o conteúdo de MaterialAoo para HomePage
Carregar HomePage em MyApp*/ 
