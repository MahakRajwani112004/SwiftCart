import 'dart:io';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:myecom/constants/color.dart';
import 'package:myecom/model/ItemWidget.dart';
import 'package:myecom/view/Profile.dart';
import 'package:myecom/view/loginscreen.dart';
import 'package:myecom/view/orders.dart';

File? temp;

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  List imageList = [
    {"id": 1, "image_path": 'assests/caro1.jpg'},
    {"id": 2, "image_path": 'assests/6slide.jpg'},
    {"id": 3, "image_path": 'assests/jewelslider.jpg'},
    {"id": 4, "image_path": 'assests/slide5.jpg'},
  ];
  final CarouselController controller = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            child: Container(
              margin: EdgeInsets.only(),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: temp != null
                    ? FileImage(temp!)
                    : AssetImage('assests/profile.webp') as ImageProvider,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, right: 15),
            child: Text(
              "Hello Customer !",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: font,
                  fontWeight: FontWeight.w600),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Colors.yellow,
              size: 30,
            ),
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Orders()));
              },
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.black,
                size: 30,
              )),
          IconButton(
              onPressed: () {
                _auth.signOut();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              icon: Icon(
                Icons.logout,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 24,
                  ),
                ),
                Text(
                  "Search by Keyword or Product Id",
                  style:
                      TextStyle(fontFamily: font, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: primaryColor),
                          borderRadius: BorderRadius.circular(38)),
                      child: CircleAvatar(
                        radius: 38,
                        backgroundImage: AssetImage("assests/new png.png"),
                      ),
                    ),
                    Text(
                      "Mens",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: font,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: primaryColor),
                          borderRadius: BorderRadius.circular(38)),
                      child: CircleAvatar(
                        radius: 38,
                        backgroundImage: AssetImage("assests/download.jpeg"),
                      ),
                    ),
                    Text(
                      "Shirts",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: font,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: primaryColor),
                          borderRadius: BorderRadius.circular(38)),
                      child: CircleAvatar(
                        radius: 38,
                        backgroundImage: AssetImage("assests/baby.jpeg"),
                      ),
                    ),
                    Text(
                      "Babies",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: font,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: primaryColor),
                          borderRadius: BorderRadius.circular(38)),
                      child: CircleAvatar(
                        radius: 38,
                        backgroundImage: AssetImage("assests/ladies.webp"),
                      ),
                    ),
                    Text(
                      "Lehenga",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: font,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: primaryColor),
                          borderRadius: BorderRadius.circular(38)),
                      child: CircleAvatar(
                        radius: 38,
                        backgroundImage: AssetImage("assests/suit.webp"),
                      ),
                    ),
                    Text(
                      "Suit",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: font,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: primaryColor),
                          borderRadius: BorderRadius.circular(38)),
                      child: CircleAvatar(
                        radius: 38,
                        backgroundImage: AssetImage("assests/western.jpg"),
                      ),
                    ),
                    Text(
                      "Western",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: font,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              InkWell(
                  onTap: () {},
                  child: CarouselSlider(
                    items: imageList.map((item) {
                      return Image.asset(
                        item['image_path'],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      );
                    }).toList(),
                    carouselController: controller,
                    options: CarouselOptions(
                      scrollPhysics: BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 2,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  )),
              Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imageList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => controller.animateToPage(entry.key),
                        child: Container(
                          width: currentIndex == entry.key ? 17 : 7,
                          height: 7.0,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 3.0,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: currentIndex == entry.key
                                  ? primaryColor
                                  : Colors.teal),
                        ),
                      );
                    }).toList(),
                  ))
            ],
          ),
          ItemWidget(),
        ]),
      ),
    );
  }
}
