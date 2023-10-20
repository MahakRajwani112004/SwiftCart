import 'package:flutter/material.dart';
import 'package:myecom/constants/color.dart';
import 'package:myecom/view/homepage.dart';

import 'package:myecom/view/loginscreen.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Let's Create ",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Your Own Style",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Welcome to SwiftCart - Your One-Stop Destination for Elegance and Luxury! Explore a curated collection of the finest stylish clothes, exquisite jewelry, timeless watches, and unique gifts.",
                  style: TextStyle(
                      fontFamily: 'Montserrat', fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(10, 48.0)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(primaryColor),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Get Started",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.arrow_right_alt,
                          size: 30,
                          color: Colors.black,
                        ),
                      ],
                    )),
                Container(
                  child: Image.asset("assests/home_img.png"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
