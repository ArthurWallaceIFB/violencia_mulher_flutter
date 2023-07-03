import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:final_arthur_wallace/view/home_view.dart';
import 'package:final_arthur_wallace/view/styles.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeView(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              AppColors.bg1,
              AppColors.bg2
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png', // Caminho correto para a sua logo
                width: 350,
                height: 350,
              ),
              SizedBox(height: 16),
              SpinKitFadingCircle( // Adicionando a animação de loading
                color: Colors.white, // Cor da animação
                size: 50.0, // Tamanho da animação
              ),
            ],
          ),
        ),
      ),
    );
  }
}
