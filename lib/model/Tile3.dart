import 'package:flutter/material.dart';
import 'package:myecom/constants/color.dart';
import 'package:myecom/model/Items.dart';
import 'package:myecom/model/Products.dart';
import 'package:myecom/view/Details.dart';

class Tile3 extends StatelessWidget {
  Tile3({super.key});

  @override
  Widget build(BuildContext context) {
    // return ListView.separated(
    //     separatorBuilder: (BuildContext context, int index) {
    //       return SizedBox(
    //         width: 30,
    //         height: 10,
    //       );
    //     },
    //     shrinkWrap: true,
    //     itemCount: Products.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //       return Column(
    //         children: [
    //           Stack(children: [
    //             Container(
    //               height: 160,
    //               width: 100,

    //               decoration: BoxDecoration(
    //                   color: secondaryColor,
    //                   borderRadius: BorderRadius.circular(10)),
    //               // child: Column(children: [Text(Products[index].text)]),
    //             ),
    //             Positioned(
    //               child: Image(
    //                 image: AssetImage("assests/${Products[index].image}"),
    //               ),
    //               top: 0,
    //               bottom: 30,
    //               right: 2,
    //               left: 2,
    //             ),
    //             Positioned(
    //               child: Center(child: Text(Products[index].text)),
    //               bottom: 18,
    //               left: 5,
    //               right: 5,
    //             ),
    //             Positioned(
    //               child: Center(child: Text(Products[index].price)),
    //               bottom: 0,
    //               left: 5,
    //               right: 5,
    //             )
    //           ]),
    //           // SizedBox(
    //           //   width: 20,
    //           // )
    //         ],
    //       );
    //     });
    return SingleChildScrollView(
        child: GridView.count(
            childAspectRatio: 0.68,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            shrinkWrap: true,
            children: [
          for (int i = 0; i < Items.length; i++)
            if (i > 21 && i <= 27)
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Details(
                                  img: Items[i].img,
                                  text: Items[i].text,
                                  price: Items[i].price,
                                  rating: Items[i].rating,
                                  desc: Items[i].desc,
                                )));
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                    decoration: BoxDecoration(
                        color: thirdColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(children: [
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Container(
                            width: 30,
                            margin: EdgeInsets.only(top: 10, bottom: 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                            ),
                            child: IconButton(
                                onPressed: () {}
                                //   setState(() {
                                //     icon = !icon;
                                //   });
                                // },
                                ,
                                icon: Icon(Icons.favorite_border)))
                      ]),
                      Container(
                        child: Image.asset(
                          Items[i].img,
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Container(
                        // padding: EdgeInsets.only(bottom: 8),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          Items[i].text,
                          style: TextStyle(
                              fontFamily: font, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        // padding: EdgeInsets.only(bottom: 2),
                        alignment: Alignment.centerLeft,
                        child: Row(children: [
                          Icon(Icons.currency_rupee),
                          Text(
                            Items[i].price,
                            style: TextStyle(
                                fontFamily: font, fontWeight: FontWeight.bold),
                          ),
                        ]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 50,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 20,
                                ),
                                Text(
                                  Items[i].rating,
                                  style: TextStyle(
                                      fontFamily: font,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.shopping_cart)
                        ],
                      ),
                    ]),
                  ))
        ]));
  }
}
