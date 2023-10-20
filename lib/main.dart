import 'package:flutter/material.dart';
import 'package:myecom/firebase_options.dart';
import 'package:myecom/model/MainHome.dart';
import 'package:myecom/model/provider.dart';
import 'package:myecom/sample.dart';
import 'package:myecom/view/landing.dart';
import 'package:myecom/view/loginscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myecom/view/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(ChangeNotifierProvider(
    create: (_) => ItemProvider()..init(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Swift Cart',
      home: SplashScreen(),
    );
  }
}
