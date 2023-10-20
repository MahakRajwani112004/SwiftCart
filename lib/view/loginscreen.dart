import 'package:flutter/material.dart';
import 'package:myecom/constants/color.dart';
import 'package:myecom/view/Sign1.dart';
import 'package:myecom/view/auth.dart';
import 'package:myecom/view/login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
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
                      "Welcome to SwiftCart!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ]),
            ),
            Expanded(
              child: Container(
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
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AuthScreen()),
                            );
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
                                    offset: Offset(0, 5))
                              ],
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Text(
                                "SIGN IN",
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
                          height: 50,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                            );
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
                                    offset: Offset(0, 5))
                              ],
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Text(
                                "SIGN UP",
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
                          height: 50,
                        ),
                        Text(
                          "Sign in with :",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 10,
                        ),
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
    );
  }
}
