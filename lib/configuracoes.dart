import 'package:flutter/material.dart';
import 'package:glub_hidratado/editar_informa%C3%A7oes/editar.dart';
import 'package:glub_hidratado/services/auth_service.dart';
import 'package:provider/provider.dart';

class Configuracao extends StatefulWidget {
  Configuracao({Key? key}) : super(key: key);

  @override
  _ConfiguracaoState createState() => _ConfiguracaoState();
}

class _ConfiguracaoState extends State<Configuracao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Center(
              child: Text(
        "Configurações",
      ))),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 40,
              ),
              Wrap(
                runSpacing: 10,
                children: [
                  ListTile(
                    leading: const Icon(Icons.share),
                    title: const Text("Compartinhar com amigos"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.edit),
                    title: const Text("Modificar informações"),
                    onTap: () {Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Editar(),
            ),
          );},
                  ),
                  ListTile(
                    leading: const Icon(Icons.notifications_active_outlined),
                    title: const Text("Notificações"),
                    onTap: () {},
                  ),const Divider(
                color: Color.fromARGB(55, 0, 0, 0),
              ),
                  const Text(
                  "     Ajuda",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),const SizedBox(
                height: 30,
              ),
                  ListTile(
                    leading: const Icon(Icons.contact_page_outlined),
                    title: const Text("Contato"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.report),
                    title: const Text("Sobre"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.exit_to_app),
                    title: const Text("Sair"),
                    onTap: () async {
                      await context.read<AuthService>().sair();
                    },
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/image1.png',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
