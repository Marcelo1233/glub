import 'package:flutter/material.dart';
import 'package:glub_hidratado/coletando_dados/sexo.dart';

class Peso extends StatelessWidget {
 Peso({Key? key}) : super(key: key);

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
                              "Meus Dados",
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
                const SizedBox(
                      height: 40,
                    ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Align(),
                    Container(
                      width: 350,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: "Peso",
                          labelStyle: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                        const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ElevatedButton(
                          child: Text(
                            "Proximo",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {Navigator.push(
                      context,
                       MaterialPageRoute(
                         builder: (context) => Sexo   (),
                    ),
                    );},
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 26, 185, 224),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 80, vertical: 15),
                          ),
                        ),
                      ],
                    ),
                    
                  ],
                ),Column(
            children: <Widget>[
              Image.asset(
                'assets/images/image4.png',
              ),
              ],
            ),],
            ),
        ),
        ),
      ),
      
    );
  }
}
