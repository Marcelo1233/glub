import 'package:flutter/material.dart';
import 'package:glub_hidratado/paginas/home_page.dart';


class DadosCadastrados extends StatelessWidget {
    DadosCadastrados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 310,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/login.png'),
                        fit: BoxFit.fill),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: (Container(
                          margin: const EdgeInsets.only(top: 0),
                          child: const Center(
                            child: Text(
                              "Dados cadastrados!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Align(),
                    Container(
                      padding: const EdgeInsets.all(16),
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/image6.png',
                            width: 500,
                          ),
                          Stack(
                            children: <Widget>[
                              Positioned(
                                child: (Container(
                                  margin: const EdgeInsets.only(top: 0),
                                  child: const Center(
                                    child: Text(
                                      "xml de água ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const Text(
                            "Quem bebe água tem mais disposição \ndurante o dia Já encheu sua garrafinha?",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              fontStyle: FontStyle.normal,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
           Navigator.push(
                      context,
                       MaterialPageRoute(
                         builder: (context) => HomePage(),
                    ),);
          },
          tooltip: 'Próxima tela',
          child: const Icon(Icons.arrow_right_alt),
        ),
      ),
    );
  }
}
