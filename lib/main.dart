import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//     home: Container(color: const Color.fromARGB(255, 75, 0, 94),
//     alignment: Alignment.center,
//     child: Text('Olá, mundo'),)
//   );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _peopleCount = 0;
  String _message = 'ENTRADA AUTORIZADA';

  int _entrarPressCount = 0;
  int _sairPressCount = 0;

  void _incrementPeople(){
    setState(() {
      _entrarPressCount++;
      _peopleCount++;
      if (_peopleCount > 10){
        _message = 'ENTRADA PROIBIDA';
        
      } else {
        _message = 'ENTRADA AUTORIZADA';
      }
    });
  }

  void _decrementPeople(){
    setState(() {
      _sairPressCount++;
      if (_peopleCount>0){
        _peopleCount--;
      }
      if (_peopleCount < 10){
        _message = 'ENTRADA AUTORIZADA';
      }
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Olá, mundo')),
        backgroundColor: Colors.black,
      body: Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('$_message',
          style: TextStyle(
            fontSize:30,
            color: Colors.white,
            fontWeight: FontWeight.w800,
            letterSpacing: 4,
          )),
          Text('Pessoas = $_peopleCount', 
          style:TextStyle(
            fontSize:30,
            color: Colors.white,
          )),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: _incrementPeople,
              child: Text('entrar',),),
              ElevatedButton(onPressed: _decrementPeople,
              child: Text('sair',)),
            ],),

            const SizedBox(height: 20),
            Text(
              'Botão ENTRAR foi pressionado: $_entrarPressCount vezes',
              style: const TextStyle(color: Colors.white),
            ),
            Text(
              'Botão SAIR foi pressionado: $_sairPressCount vezes',
              style: const TextStyle(color: Colors.white),
              )
          
        ],),
    );
  }
}