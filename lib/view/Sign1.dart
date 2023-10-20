import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myecom/constants/color.dart';
import 'package:myecom/model/MainHome.dart';
import 'package:myecom/view/homepage.dart';
import 'package:myecom/view/loginscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

File? temp;
List<String> genderOptions = [
  'Male',
  'Female',
  'Other',
];
String selectedGender = 'Female';
FirebaseAuth _auth = FirebaseAuth.instance;

class SignUp extends StatefulWidget {
  SignUp({super.key});
  // ignore: override_on_non_overriding_member

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  Future<void> imagePicker() async {
    final img = ImagePicker();
    final picked = await img.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('profile_image', picked.path);
    }

    if (picked != null) {
      setState(() {
        temp = File(picked.path);
      });
    }
  }

  Future<void> _loadImage() async {
    final prefs = await SharedPreferences.getInstance();
    final imagePath = prefs.getString('profile_image');
    if (imagePath != null) {
      setState(() {
        temp = File(imagePath);
      });
    }
  }

  TextEditingController name = TextEditingController();

  TextEditingController phone = TextEditingController();

  TextEditingController gender = TextEditingController();

  TextEditingController state = TextEditingController();

  TextEditingController district = TextEditingController();

  TextEditingController pincode = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Colors.transparent,
        // ),
        extendBodyBehindAppBar: true,
        // backgroundColor: secondaryColor,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 60,
                ),
                Text(
                  "SignUp",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 110,
                  width: 120,
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: temp != null
                            ? FileImage(temp!)
                            : AssetImage('assests/cloth.png') as ImageProvider,
                      ),
                      Positioned(
                        child: IconButton(
                          onPressed: () {
                            imagePicker();
                          },
                          icon: Icon(Icons.add_a_photo, size: 30),
                        ),
                        bottom: 0,
                        right: 5,
                      )
                    ],
                  ),
                ),

                // Container(
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(10),
                //         border: Border.all(
                //           color: Colors.black,
                //           width: 2,
                //         )),
                //     child: Icon(
                //       Icons.add_a_photo,
                //       size: 40,
                //    )),

                Text(
                  "Choose photo",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                      hintText: 'Enter your Full Name',
                      hintStyle: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                      labelText: 'Full Name*',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 16)),
                ),

                TextField(
                    controller: phone,
                    decoration: InputDecoration(
                        hintText: 'Enter Phone number',
                        hintStyle: TextStyle(
                          fontFamily: 'Montserrat',
                        ),
                        labelText: 'Phone No*',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            color: Colors.black))),
                TextField(
                    controller: _email,
                    decoration: InputDecoration(
                        hintText: 'Enter Email',
                        hintStyle: TextStyle(
                          fontFamily: 'Montserrat',
                        ),
                        labelText: 'Enter Email*',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            color: Colors.black))),
                TextField(
                    controller: _pass,
                    decoration: InputDecoration(
                        hintText: 'Enter Password',
                        hintStyle: TextStyle(
                          fontFamily: 'Montserrat',
                        ),
                        labelText: 'Enter Password*',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            color: Colors.black))),
                TextField(
                    controller: gender,
                    decoration: InputDecoration(
                        hintText: 'Gender',
                        hintStyle: TextStyle(
                          fontFamily: 'Montserrat',
                        ),
                        labelText: 'Gender*',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            color: Colors.black))),
                TextField(
                    controller: state,
                    decoration: InputDecoration(
                        labelText: 'Enter state*',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            color: Colors.black))),
                TextField(
                  controller: district,
                  decoration: InputDecoration(
                      labelText: 'District*',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          color: Colors.black)),
                ),
                TextField(
                    controller: pincode,
                    decoration: InputDecoration(
                        labelText: 'Pincode*',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            color: Colors.black))),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(primaryColor)),
                    onPressed: () {
                      _auth.createUserWithEmailAndPassword(
                          email: _email.text, password: _pass.text);

                      String inputValue = name.text;
                      print('Text Name: $inputValue');
                      String phonevalue = phone.text;
                      print('Text Phone: $phonevalue');
                      String genderval = gender.text;
                      print('Text Phone: $genderval');
                      String statevalue = state.text;
                      print('Text State: $statevalue');
                      String districtvalue = district.text;
                      print('Text District: $districtvalue');
                      String pincodeval = pincode.text;
                      print('Text District: $pincodeval');

                      // AlertDialog(
                      //   title: Text('Sign Up Successful'),
                      //   content: Text('You have successfully signed up!'),
                      //   actions: [
                      //     TextButton(
                      //       onPressed: () {
                      //         Navigator.of(context).pop(); // Close the dialog
                      //       },
                      //       child: Text('OK'),
                      //     ),
                      //   ],
                      // );

                      Map<String, dynamic> data = {"name": name.text};
                      FirebaseFirestore.instance
                          .collection("users")
                          .add(data)
                          .then((value) => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainHome())));
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Text("Sign Up"))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
