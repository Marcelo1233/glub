import 'package:flutter/material.dart';
import 'package:glub_hidratado/widgets/auto_check.dart';





class AppWidget extends StatelessWidget {
AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/autocheck',
      routes: {'/autocheck': (context) => AutoCheck()},
    );
  }
}
