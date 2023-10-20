import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myecom/model/MainHome.dart';
import 'package:myecom/view/homepage.dart';
import 'package:myecom/view/login.dart';
import 'package:myecom/view/loginscreen.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({super.key});

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: _auth.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // Navigator.push(context, MaterialPageRoute(builder: builder))
            return MainHome();
          } else {
            return Login();
          }
        },
      ),
    );
  }
}
