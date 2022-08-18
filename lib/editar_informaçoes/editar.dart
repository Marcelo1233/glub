import 'package:flutter/material.dart';

class Editar extends StatefulWidget {
  Editar({Key? key}) : super(key: key);

  @override
  _EditarState createState() => _EditarState();
}

class _EditarState extends State<Editar> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Editar Informações",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: Theme.of(context).textTheme.headline4,
                      decoration: const InputDecoration(
                        labelText: 'Altura:',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: Theme.of(context).textTheme.headline4,
                      decoration: const InputDecoration(
                        labelText: 'Idade:',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: Theme.of(context).textTheme.headline4,
                      decoration: const InputDecoration(
                        labelText: 'Peso:',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      style: Theme.of(context).textTheme.headline4,
                      decoration: const InputDecoration(
                        labelText: 'Sexo:',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Salvar as alterações"),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
