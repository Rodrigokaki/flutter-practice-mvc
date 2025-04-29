import 'package:aula_mvc/views/fifth_screen.dart';
import 'package:aula_mvc/views/fourth_screen.dart';
import 'package:aula_mvc/views/home_screen.dart';
import 'package:aula_mvc/views/second_screen.dart';
import 'package:aula_mvc/views/third_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp (const ProjetoP1Topicos());
}

class ProjetoP1Topicos extends StatelessWidget {
  const ProjetoP1Topicos({super.key});

  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      title: 'Avaliação P1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(), 
        '/second': (context) => const SecondScreen(), 
        '/third': (context) => const ThirdScreen(), 
        '/fourth': (context) => const FourthScreen(),
        //'/fifth': (context) => const FifthScreen(),
      },
    );
  }
}