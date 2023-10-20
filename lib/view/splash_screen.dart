import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myecom/constants/color.dart';
import 'package:myecom/model/MainHome.dart';
import 'package:myecom/view/landing.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LandingPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('Swift Cart',
                      textStyle: TextStyle(
                          color: primaryColor,
                          fontSize: 30,
                          fontFamily: font,
                          fontWeight: FontWeight.w600)),
                ],
                repeatForever: true,
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assests/splashpng.png",
                height: 100,
                width: 100,
                color: primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
