import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myecom/constants/color.dart';
import 'package:myecom/model/Tile.dart';
import 'package:myecom/model/Tile2.dart';
import 'package:myecom/model/Tile3.dart';
import 'package:myecom/model/Tile4.dart';
import 'package:myecom/model/Tile5.dart';
import 'package:myecom/model/Tile6.dart';
import 'package:myecom/view/orders.dart';

class Categoryy extends StatelessWidget {
  const Categoryy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " YOUR STYLE",
          style: TextStyle(
              color: Colors.black,
              fontFamily: font,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              )),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Orders()));
            },
            icon: Image.network(
              "https://cdn-icons-png.flaticon.com/512/60/60992.png",
              width: 50,
              height: 22,
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: DefaultTabController(
        length: 6, // Number of tabs
        child: Row(
          children: [
            RotatedBox(
              quarterTurns: 1,
              child: TabBar(
                indicatorColor: primaryColor,
                tabs: <Widget>[
                  Tab(
                    // icon: Icon(Icons.cloud_outlined),
                    child: Text(
                      'Watch',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: font,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Tab(
                    // icon: Icon(Icons.beach_access_sharp),
                    child: Text(
                      'Jewellery',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: font,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Tab(
                    // icon: Icon(Icons.beach_access_sharp),
                    child: Text(
                      'Shoes',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: font,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Jackets',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: font,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Kurti',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: font,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Kids',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: font,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Tile(),
                  Tile2(),
                  Tile3(),
                  Tile4(),
                  Tile5(),
                  Tile6()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
