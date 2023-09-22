import 'dart:math';

import 'package:flutter/material.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  var numeroGerado = 0;

  int _geraNumeroAleatorio() {
    Random numeroAleatorio = Random();
    return numeroAleatorio.nextInt(10);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Meu titulo")),
      body: Center(
        child: Text(numeroGerado.toString())),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_box_rounded),
        onPressed: () {
          setState(() {
            numeroGerado = _geraNumeroAleatorio();
          });
        },
      ),
    );
  }
}
