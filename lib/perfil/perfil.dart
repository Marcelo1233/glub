import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        title: const Text('Perfil'),
      ),
      headerHeight: 400.0,
      frontLayer: const Center(
        child: Text("Algum Texto ou informaçao"),
      ),
      backLayer: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 360,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/circulo.png'),
                    fit: BoxFit.fill),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: (Container(
                      margin: const EdgeInsets.only(top: 0),
                      child: const Center(
                        child: Text(
                          "Perfil",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
