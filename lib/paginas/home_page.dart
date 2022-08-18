import 'package:flutter/material.dart';
import 'package:glub_hidratado/configuracoes.dart';
import 'package:glub_hidratado/historico/historico.dart';
import 'package:glub_hidratado/perfil/perfil.dart';
import 'package:glub_hidratado/selecionar_liquido/selecionar_liquido.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
                Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SelecionarLiquido(),
            ),
          );  
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Theme.of(context).colorScheme.primary,
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                
                    },
                    icon: const Icon(Icons.home),
                  ),
                  IconButton(
                    onPressed: () {
                       Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Historico(),
            ),
          );},
                    icon: const Icon(Icons.description),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  IconButton(
                    onPressed: () { Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Perfil(),
            ),
          );},
                    icon: const Icon(Icons.person),
                  ),
                  IconButton(
                    onPressed: () {

                       Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Configuracao(),
            ),
          );
                    },
                    icon: const Icon(Icons.settings),
                  ),
                ],
              )),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/circulo.png',
                width: 300,
              ),
              const Text(
                "0/ 'X' ML",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
