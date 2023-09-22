import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/login_page.dart';


class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const AppLogin(),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}