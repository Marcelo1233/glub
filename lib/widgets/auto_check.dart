import 'package:flutter/material.dart';
import 'package:glub_hidratado/coletando_dados/inicio.dart';
import 'package:glub_hidratado/paginas/login_page.dart';
import 'package:glub_hidratado/services/auth_service.dart';
import 'package:provider/provider.dart';

class AutoCheck extends StatefulWidget {
  AutoCheck({Key? key}) : super(key: key);

  @override
  _AutoCheckState createState() => _AutoCheckState();
}

class _AutoCheckState extends State<AutoCheck> { 
  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);

    if (auth.isLoandig){
      return loading();
    }else if (auth.Usuario == null){
     return LoginPage();
    }else{
      return Inicio ();
  }
}
}     

  loading() {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
