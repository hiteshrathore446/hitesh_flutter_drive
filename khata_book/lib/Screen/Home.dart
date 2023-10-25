import 'package:flutter/material.dart';
import 'package:khata_book/Screen/Create_Busines.dart';
import 'package:khata_book/Screen/Report.dart';
import 'package:khata_book/Screen/Staff.dart';

class home_Screen extends StatefulWidget {
  const home_Screen({super.key});

  @override
  State<home_Screen> createState() => _home_ScreenState();
}

class _home_ScreenState extends State<home_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              _displyBtmSheet(context);
            },
          ),
          backgroundColor: Color(0xff00008b),
          automaticallyImplyLeading: false,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color: Color(0xff00008b)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.7,
                      child: DefaultTabController(
                        length: 2,
                        child: TabBar(indicatorColor: Colors.amber[800], tabs: [
                          Tab(
                            child: Text(
                              "CUSTOMER",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "SUPPLIERS",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ]),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.person_add_rounded,
                              size: 20,
                              color: Colors.white,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                "ADD STAFF",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Staff()));
                      },
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 10,
                    decoration: BoxDecoration(
                      color: Color(0xff00008b),
                    ),
                  )
                ],
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(color: Color(0xff00008b)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 3.4,
                              decoration: BoxDecoration(color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "\$ 0",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "You will Give",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(color: Colors.black),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          3.4,
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "\$ 0",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "You will get",
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                            InkWell(
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3.3,
                                height: 50,
                                decoration: BoxDecoration(color: Colors.white),
                                child: Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "View",
                                          style: TextStyle(
                                              color: Color(0xFF00008b),
                                              fontWeight: FontWeight.normal),
                                        ),
                                        Text(
                                          "Report",
                                          style: TextStyle(
                                              color: Color(0xFF00008b),
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right_outlined,
                                    size: 20,
                                    color: Color(0xff00008b),
                                  )
                                ]),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Report_View()));
                              },
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xFFededf5),
      ),
    );
  }
}

Future _displyBtmSheet(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: ((context) => SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Text(
                            "Edit Business Name",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          child: TextField(
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(
                                          0xff00008b)), // Change the border color here
                                ),
                                border: OutlineInputBorder(),
                                hintText: "My Business"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF00008B),
                                minimumSize: const Size.fromHeight(50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            onPressed: () {},
                            child: Text("Save")),
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                            primary: Color(0xFF00008B),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Business()));
                          },
                          child: Text(
                            "Create New Khatabook",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      TextButton(
                          style: TextButton.styleFrom(
                            primary: Color(0xFF00008B),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Choose another book ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              ),
            ),
          )));
}
