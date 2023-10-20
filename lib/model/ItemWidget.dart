import 'package:flutter/material.dart';
import 'package:myecom/constants/color.dart';
import 'package:myecom/model/Items.dart';
import 'package:myecom/view/Details.dart';

class ItemWidget extends StatefulWidget {
  ItemWidget({super.key});
  int i = 0;

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

// IconData icon = (Icons.favorite_border);
bool icon = true;

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.count(
        childAspectRatio: 0.68,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        shrinkWrap: true,
        children: [
          for (int i = 0; i < Items.length; i++)
            if (i >= 0 && i < 10)
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
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              width: 30,
                              margin: EdgeInsets.only(top: 10, bottom: 0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28),
                              ),
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      icon = !icon;
                                    });
                                  },
                                  icon: Icon(
                                    icon
                                        ? Icons.favorite_border
                                        : Icons.favorite,
                                    size: 25,
                                    color: Colors.red,
                                  )))
                        ],
                      ),
                      InkWell(
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
                          // margin: EdgeInsets.all(5),
                          child: Image.asset(
                            Items[i].img,
                            height: 150,
                            width: 150,
                          ),
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
                            width: 60,
                          ),
                          Icon(Icons.shopping_cart)
                        ],
                      ),
                    ],
                  ),
                ),
              )
        ],
      ),
    );
  }
}
