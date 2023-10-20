import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myecom/model/MainHome.dart';

import '../constants/color.dart';

class Forget extends StatelessWidget {
  Forget({super.key});

  FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                // height: 500,
                padding: EdgeInsets.symmetric(vertical: 200),
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        colors: [primaryColor, secondaryColor, primaryColor])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Forget Password ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ]),
                    ),
                    Container(
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                topLeft: Radius.circular(40),
                                bottomLeft: Radius.circular(40),
                                bottomRight: Radius.circular(40))),
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: SingleChildScrollView(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    height: 20,
                                  ),

                                  Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color: primaryColor,
                                            blurRadius: 20,
                                            offset: Offset(0, 5)),
                                      ],
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.all(6),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                hintText: "Enter email",
                                                prefixIcon: Icon(Icons.mail)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: 50,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MainHome()),
                                      );
                                    },
                                    child: GestureDetector(
                                      onTap: () async {
                                        try {
                                          await _auth.sendPasswordResetEmail(
                                              email: _email.toString());
                                        } catch (err) {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                    content: Text(
                                                        "Wrong Email or Password"));
                                              });
                                        }
                                      },
                                      child: Container(
                                        height: 70,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 50),
                                        padding: EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                          color: secondaryColor,
                                          boxShadow: [
                                            BoxShadow(
                                                color: primaryColor,
                                                blurRadius: 20,
                                                offset: Offset(0, 10))
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Center(
                                          child: Text(
                                            " Forget Password ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  //   child: Text(
                                  //     "Don't have account , create new",
                                  //     style: TextStyle(
                                  //         fontFamily: font,
                                  //         fontWeight: FontWeight.w600),
                                  //   ),
                                  // ),

                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Don't have account , create new",
                                    style: TextStyle(
                                        fontFamily: font,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  )
                                ]),
                          ),
                        )),
                  ],
                ))));
  }
}
