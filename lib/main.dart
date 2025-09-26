import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Container(color: const Color.fromARGB(255, 75, 0, 94),
    alignment: Alignment.center,
    child: Text('Olá, mundo'),)
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

