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


  void _incrementPeople(){
    setState(() {
      _peopleCount++;
    });
  }

  void _decrementPeople(){
    setState(() {
      _peopleCount--;
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
          Text('Pode Entrar!',
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
              TextButton(onPressed: _incrementPeople,
              child: Text('entrar', style: TextStyle(color: Colors.white,),),),
              TextButton(onPressed: _decrementPeople,
              child: Text('sair', style:TextStyle(color: Colors.white,)))
            ]
          )
          ,
        ],),
    );
  }
}