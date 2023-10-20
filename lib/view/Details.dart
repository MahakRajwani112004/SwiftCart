import 'package:flutter/material.dart';
import 'package:myecom/constants/color.dart';
import 'package:myecom/model/Item.dart';
import 'package:myecom/model/provider.dart';
import 'package:provider/provider.dart';

// List<Item> Items = [];

class Details extends StatelessWidget {
  String img, text, price, rating, desc;
  Details({
    required this.img,
    required this.text,
    required this.price,
    required this.rating,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    final itemprovider = Provider.of<ItemProvider>(context, listen: false);
    itemprovider.cartItems.contains(
        Item(img: img, text: text, price: price, rating: rating, desc: desc));
    return Scaffold(
        backgroundColor: thirdColor,
        body: Container(
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: thirdColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    child: Image.asset(img),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          // bottomRight: Radius.circular(30),
                          // bottomLeft: Radius.circular(30)
                        )),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                text,
                                style: TextStyle(
                                    fontFamily: font,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Icon(
                              Icons.favorite_border,
                              size: 25,
                              color: Colors.red,
                            )
                          ],
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 45),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              desc,
                              style: TextStyle(
                                  fontFamily: font,
                                  fontWeight: FontWeight.w600),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 45),
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Icon(Icons.currency_rupee),
                                Text(
                                  price,
                                  style: TextStyle(
                                      fontFamily: font,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 9,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 45),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Select Color",
                              style: TextStyle(
                                  fontFamily: font,
                                  fontWeight: FontWeight.w600),
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.green,
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.red,
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.blue,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                itemprovider.addBookmark(Item(
                                    img: img,
                                    text: text,
                                    price: price,
                                    rating: rating,
                                    desc: desc));
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text('Added to Cart'),
                                        content: Text(
                                            'The item has been added to your cart.'),
                                        actions: <Widget>[
                                          TextButton(
                                            child: Text('OK'),
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pop(); // Close the dialog.
                                            },
                                          ),
                                        ],
                                      );
                                    });
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(10),
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: secondaryColor),
                                child: Center(child: Text("Add to Bag")),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}
