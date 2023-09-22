import 'dart:html';

import 'package:flutter/material.dart';

class AppLogin extends StatefulWidget {
  const AppLogin({super.key});

  @override
  State<AppLogin> createState() => _AppLoginState();
}

class _AppLoginState extends State<AppLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  Expanded(
                    flex: 20,
                    child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/7/70/Firefox_Focus_2021_Icon.png",
                      height: 150,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text("Já tem cadastro?",
                  style: TextStyle(color: Colors.white, fontSize: 30)),
              const SizedBox(
                height: 10,
              ),
              const Text("Faça seu login",
                  style: TextStyle(color: Colors.white)),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                color: Colors.grey,
                height: 40,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.email,
                        color: Color.fromARGB(255, 163, 26, 197)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                color: Colors.grey,
                height: 40,
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top:0),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 163, 26, 197))),
                    hintText: "Senha",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    prefixIcon: Icon(Icons.lock,
                        color: Color.fromARGB(255, 163, 26, 197)),
                    suffixIcon: Icon(Icons.visibility,
                        color: Color.fromARGB(255, 163, 26, 197)),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 163, 26, 197),
                    ),
                  ),
                  child: Text('ENTRAR', style: TextStyle(color: Colors.white)),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: const Text(
                  'Esqueci minha senha',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: const Text(
                  'Cadastrar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Expanded(child: Container()),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
