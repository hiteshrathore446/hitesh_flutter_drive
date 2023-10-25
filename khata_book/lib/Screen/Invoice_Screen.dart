import 'package:flutter/material.dart';
import 'package:khata_book/Screen/Cash_Book.dart';
import 'package:khata_book/Screen/Report.dart';

class Invoice_Screen extends StatefulWidget {
  const Invoice_Screen({super.key});

  @override
  State<Invoice_Screen> createState() => _Invoice_ScreenState();
}

class _Invoice_ScreenState extends State<Invoice_Screen> {
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
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                onTap: () {},
              ),
              actions: [
                Row(
                  children: [
                    Icon(Icons.person_add_sharp),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Add Staff",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
              backgroundColor: Color(0xff00008b),
              automaticallyImplyLeading: false,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(color: Color(0xff00008b)),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3.2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                child: Row(children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Text(
                                          "\$ 0",
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          "Monthly Sale",
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right_outlined,
                                    size: 20,
                                    color: Color(0xff00008b),
                                  )
                                ]),
                              ),
                              onTap: () {},
                            ),
                            InkWell(
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3.2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                child: Row(children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Text(
                                          "\$ 0",
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          "Monthly Pur",
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right_outlined,
                                    size: 20,
                                    color: Color(0xff00008b),
                                  )
                                ]),
                              ),
                              onTap: () {},
                            ),
                            //*********VIew Report**************************** */
                            InkWell(
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3.5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                child: Row(children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "View",
                                      ),
                                      Text(
                                        "Report",
                                      ),
                                    ],
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
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          decoration: BoxDecoration(color: Color(0xff00008b)),
                          child: Column(children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.8,
                                    decoration:
                                        BoxDecoration(color: Colors.white),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Column(children: [
                                                Text(
                                                  "\$ 0",
                                                ),
                                                Text(
                                                  "Today's IN",
                                                )
                                              ]),
                                            ),
                                            Container(
                                              child: Column(children: [
                                                Text(
                                                  "\$ 0",
                                                ),
                                                Text(
                                                  "Today's IN",
                                                )
                                              ]),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Divider(
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "CASHBOOK",
                                            style: TextStyle(
                                                color: Color(0xff00008b),
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_right_sharp,
                                            color: Color(0xff00008b),
                                          )
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  CashBook()));
                                    },
                                  )
                                ],
                              ),
                            ),

                            ///*************Tab Bar ********************* */
                            Column(
                              children: [
                                Container(
                                  decoration:
                                      BoxDecoration(color: Color(0xff00008b)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: DefaultTabController(
                                          length: 3,
                                          child: TabBar(
                                              indicatorColor: Colors.amber[800],
                                              tabs: [
                                                Tab(
                                                  child: Text(
                                                    "Sale",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                Tab(
                                                  child: Text(
                                                    "Purchase",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                Tab(
                                                  child: Text(
                                                    "Expense",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ]),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            )));
  }
}
