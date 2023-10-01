import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/dados_cadastrais.dart';
import 'package:trilhaapp/pages/pag1.dart';
import 'package:trilhaapp/pages/pag2.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => MyPageState();
}

class MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);
    int paginaAtual = 0;
    return Scaffold(
      appBar: AppBar(title: const Text("Minha home")),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 30,
            ),
            InkWell(
              child: const Text("Dados Cadastrais"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DadosCadastrais(
                            texto: "Meus dados", dados: ["Endereço", "Nome"])));
              },
            ),
          ]),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (value) {
                setState(() {
                  paginaAtual = value;
                });
              },
              children: const [FirstPage(), SecundPage()],
            ),
          ),
          BottomNavigationBar(
              onTap: (value) {
                controller.jumpToPage(value);
              },
              currentIndex: paginaAtual,
              items: [
                BottomNavigationBarItem(
                    label: "Pagina 1", icon: Icon(Icons.home)),
                BottomNavigationBarItem(
                    label: "Pagina 2", icon: Icon(Icons.home)),
              ])
        ],
      ),
    );
  }
}
