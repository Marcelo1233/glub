import 'package:flutter/material.dart';

class Historico extends StatefulWidget {
   Historico({Key? key}) : super(key: key);

  @override
  _HistoricoState createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Histórico"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return GetCard();
          }),
    );
  }

  Widget GetCard() {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
      height: 150,
      child: Card(
        color: const Color.fromRGBO(25, 48, 124, 0.01),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 10),
                  child: const Text("1/1/1111",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 10),
                  child: const Text("Parabens! você atingiu a meta diaria de agua! ;)"),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 10),
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: const <Widget>[
                        Text(
                          "Qunatidade:\n13131ml\nhora:\n10h",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}