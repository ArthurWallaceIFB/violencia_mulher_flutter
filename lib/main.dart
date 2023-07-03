import 'package:flutter/material.dart';
import 'package:final_arthur_wallace/view/splash_screen.dart';
import 'package:final_arthur_wallace/view/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seu Projeto',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashScreen(), // Define a tela de carregamento como a tela inicial do aplicativo
    );
  }
}
