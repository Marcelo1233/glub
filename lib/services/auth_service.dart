import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthException implements Exception {
  String messagem;
  AuthException(this.messagem);
}

class AuthService extends ChangeNotifier {
  FirebaseAuth _auth = FirebaseAuth.instance;
  User? Usuario;
  bool isLoandig = true;

  AuthService() {
    _autCheck();
  }

  _autCheck() {
    _auth.authStateChanges().listen((User? user) {
      Usuario = (user == null) ? null : user;
      isLoandig = false;
      notifyListeners();
    });
  }

  _getUser() {
    Usuario = _auth.currentUser;
    notifyListeners();
  }

  registar(String email, String senha, String nome) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: senha);
      await _auth.currentUser?.updateDisplayName(nome);
      _getUser();
    } on FirebaseException catch (e) {
      if (e.code == 'weak-password') {
        throw AuthException('a senha é muita fraca');
      } else if (e.code == 'email-already-in-use') {
        throw AuthException('esse email ja esta cadastrado');
      }
    }
  }

  entrar(String email, String senha) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: senha);
      _getUser();
    } on FirebaseException catch (e) {
      if (e.code == 'user-not-found') {
        throw AuthException('Email não encontrado. cadastre-se');
      } else if (e.code == 'wrong-password') {
        throw AuthException('senha incorreta. tente novamente');
      }
    }
  }

  sair() async {
    await _auth.signOut();
    _getUser();
    print("saiu");
  }
}
