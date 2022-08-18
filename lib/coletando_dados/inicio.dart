import 'package:flutter/material.dart';
import 'package:glub_hidratado/coletando_dados/altura.dart';
import 'package:glub_hidratado/coletando_dados/idade.dart';
import 'package:glub_hidratado/paginas/login_page.dart';
import 'package:glub_hidratado/tetes/glub_teste.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Text(
                  "Seja bem vindo!\nEu vou te ajudar a ficar mais hidratado e saúdavel",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  textAlign: TextAlign.center),
              Image.asset(
                "assets/images/image1.png",
                width: 400,
              ), ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Idade()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 26, 185, 224),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 110, vertical: 15),
                          ),
                          child: const Text(
                            "Continuar",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
            ],
          ),
        ),
      ),
    );
  }
}
