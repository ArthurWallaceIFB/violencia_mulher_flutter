import 'package:flutter/material.dart';

class ContatoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contato'),
      ),
      body: Center(
        child: Text('Informações de Contato'),
      ),
    );
  }
}
