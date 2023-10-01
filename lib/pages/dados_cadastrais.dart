import 'package:flutter/material.dart';

class DadosCadastrais extends StatelessWidget {
  final String texto;
  final List<String> dados;
  const DadosCadastrais({Key? key, required this.texto, required this.dados}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(texto),
        
        ),
      body: const Center(

      ),
    );
  }
}