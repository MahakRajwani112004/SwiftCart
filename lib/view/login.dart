import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:myecom/constants/color.dart';
import 'package:myecom/model/mainhome.dart';
import 'package:myecom/view/Sign1.dart';
import 'package:myecom/view/forget.dart';

class Login extends StatelessWidget {
  Login({super.key});

  FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50),
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
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Welcome back",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )
                    ]),
              ),
              Container(
                margin: EdgeInsets.all(15),
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
                          // GestureDetector(
                          //   onTap: () {
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(builder: (context) => Login()),
                          //     );
                          //   },
                          //   child: Container(
                          //     height: 60,
                          //     margin: EdgeInsets.symmetric(horizontal: 50),
                          //     padding: EdgeInsets.all(20),
                          //     decoration: BoxDecoration(
                          //       color: secondaryColor,
                          //       boxShadow: [
                          //         BoxShadow(
                          //             color: primaryColor,
                          //             blurRadius: 20,
                          //             offset: Offset(0, 10))
                          //       ],
                          //       borderRadius: BorderRadius.circular(50),
                          //     ),
                          //     child: Center(
                          //       child: Text(
                          //         "SIGN IN",
                          //         style: TextStyle(
                          //             color: Colors.white,
                          //             fontSize: 20,
                          //             fontFamily: 'Montserrat',
                          //             fontWeight: FontWeight.w900),
                          //       ),
                          //     ),
                          //   ),
                          // ),
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
                                    controller: _email,
                                    decoration: InputDecoration(
                                        hintText: "Enter email",
                                        prefixIcon: Icon(Icons.mail)),
                                  ),
                                ),
                              ],
                            ),
                          ),
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
                                    controller: _pass,
                                    decoration: InputDecoration(
                                        hintText: "Enter password",
                                        prefixIcon: Icon(Icons.password)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Forget()),
                              );
                            },
                            child: Text(
                              "Forget Password ?",
                              style: TextStyle(
                                  fontFamily: font,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          GestureDetector(
                            onTap: () async {
                              try {
                                await _auth.signInWithEmailAndPassword(
                                  email: _email.text,
                                  password: _pass.text,
                                );
                              } catch (e) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Text(e.toString()),
                                    );
                                  },
                                );
                              }
                            },
                            child: Container(
                              height: 60,
                              margin: EdgeInsets.symmetric(horizontal: 50),
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: secondaryColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: primaryColor,
                                      blurRadius: 20,
                                      offset: Offset(0, 10))
                                ],
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Text(
                                  "LOGIN ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()));
                            },
                            child: Text(
                              "Don't have account , create new",
                              style: TextStyle(
                                  fontFamily: font,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "Login with  Google",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w900),
                          ),
                          //
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 30),
                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.blue),
                              color: Color(0xFF4285F4),
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assests/google.png",
                                  height: 40,
                                  width: 50,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Sign in with Google",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
