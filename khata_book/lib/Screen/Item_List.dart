import 'package:flutter/material.dart';
import 'package:khata_book/Others_Screen/Item_Screen.dart';
import 'package:khata_book/Screen/Service.dart';

class Item_List extends StatefulWidget {
  const Item_List({super.key});

  @override
  State<Item_List> createState() => _Item_ListState();
}

class _Item_ListState extends State<Item_List> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: InkWell(
              child: Row(
                children: [
                  Icon(Icons.menu_book_sharp), // Icon
                  SizedBox(width: 8.0), // Spacer between icon and text
                  Text(
                    'My Business',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              onTap: () {
                //  _displyBtmSheet(context);
              },
            ),
            actions: [
              Row(
                children: [
                  Icon(Icons.person_add_sharp),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "Add Staff",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
            backgroundColor: Color(0xff00008b),
            automaticallyImplyLeading: false,
            elevation: 0,
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Product",
                ),
                Tab(
                  text: "Service",
                ),
              ], // Customize tab styles
              labelColor: Colors.white, // Selected tab text color
              unselectedLabelColor: Colors.grey, // Unselected tab text color
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: TabBarView(children: [
            Item_Screen(),
            Service_Screen(),
          ]),
        ));
  }
}
