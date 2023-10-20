import 'package:flutter/material.dart';
import 'package:myecom/constants/color.dart';
import 'package:myecom/model/Categories.dart';
import 'package:myecom/model/Tile.dart';

List<String> CategortyName = ['Mens', 'Kids'];

class MyCategories extends StatefulWidget {
  const MyCategories({super.key});

  @override
  State<MyCategories> createState() => _MyCategoriesState();
}

class _MyCategoriesState extends State<MyCategories> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CREATE YOUR STYLE",
          style:
              TextStyle(color: Colors.black, fontFamily: medium, fontSize: 20),
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
            onPressed: () {},
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
      body: Row(children: [
        SizedBox(
            width: 100,
            child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex == index;
                      });
                    },
                    child: Container(
                      child: Row(children: [
                        AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          height: (selectedIndex == index) ? 50 : 0,
                          width: 5,
                          color: primaryColor,
                        ),
                        Container(
                          color: (selectedIndex == index)
                              ? secondaryColor.withOpacity(0.2)
                              : Colors.transparent,
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: primaryColor),
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assests/${Categories[index].image}"),
                                      fit: BoxFit.contain),

                                  // child: CircleAvatar(c
                                  //   backgroundImage:
                                  //       AssetImage("assests/$index.jpeg", ),
                                  //   radius: 38,
                                ),
                              ),
                              Text(Categories[index].name),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 5,
                  );
                },
                itemCount: Categories.length)),
        // Expanded(child: Container()),

        Tile(),
        SizedBox(
          width: 30,
        ),
      ]),
    );
  }
}
