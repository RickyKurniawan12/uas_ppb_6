import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? _user;

  User? get user => _user;

  bool get isLoggedIn => _user != null;

  Future<void> login({required String email, required String password}) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      _user = credential.user;
    } on FirebaseAuthException catch (error) {
      switch (error.code) {
        case 'INVALID_LOGIN_CREDENTIAL':
          throw 'Invalid login credentials.';
        default:
          rethrow;
      }
    }
    notifyListeners();
  }

  Future<void> logout() async {
    _user = null;
    await _auth.signOut();
    notifyListeners();
  }
}