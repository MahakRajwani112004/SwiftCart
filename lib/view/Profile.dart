import 'package:flutter/material.dart';
import 'package:myecom/constants/color.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "ACCOUNT",
            style: TextStyle(
                color: Colors.black,
                fontFamily: font,
                fontWeight: FontWeight.w600,
                fontSize: 25),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 115,
            // width: 115,
            child: Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assests/profile.webp"),
                  ),
                  Positioned(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_a_photo, size: 30),
                    ),
                    bottom: 0,
                    right: 0,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFFEF2F4)),
            child: Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.account_circle),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Edit Profile Details",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: font,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 143,
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  size: 30,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFFEF2F4)),
            child: Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Wishlisted Products",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: font,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 130,
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  size: 30,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFFEF2F4)),
            child: Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.settings),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Settings",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: font,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 212,
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  size: 30,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFFEF2F4)),
            child: Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.logout),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Logout",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: font,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 215,
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  size: 30,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFFEF2F4)),
            child: Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.add_call),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Help Centre",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: font,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 175,
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  size: 30,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
