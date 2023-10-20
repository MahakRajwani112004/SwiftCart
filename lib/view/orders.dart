import 'package:flutter/material.dart';
import 'package:myecom/constants/color.dart';
import 'package:myecom/model/Item.dart';
import 'package:myecom/model/MainHome.dart';
import 'package:myecom/model/provider.dart';
import 'package:provider/provider.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    final itemprovider = Provider.of<ItemProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 30),
              alignment: Alignment.centerLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainHome()));
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
            ),
            Text(
              "ORDERS",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: font,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              itemprovider.cartItems[index].img,
            ),
            title: Text(itemprovider.cartItems[index].text),
            subtitle: Row(
              children: [
                Icon(
                  Icons.currency_rupee,
                  size: 20,
                ),
                Text(itemprovider.cartItems[index].price),
              ],
            ),
            trailing: IconButton(
                onPressed: () {
                  final item =
                      itemprovider.cartItems[index]; // Get the item to delete
                  itemprovider.deleteBookmark(item);
                },
                icon: Icon(Icons.delete)),
          );
        },
        itemCount: itemprovider.cartItems.length,
      ),
    );
  }
}
