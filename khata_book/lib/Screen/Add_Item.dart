import 'package:flutter/material.dart';

class Add_Item extends StatefulWidget {
  const Add_Item({super.key});

  @override
  State<Add_Item> createState() => _Add_ItemState();
}

class _Add_ItemState extends State<Add_Item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff00008b),
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Text(
            "Add Item",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(children: [
          Container(
            height: 100,
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: TextField(
                      maxLines: null,
                      decoration: InputDecoration(
                          hintText:
                              "Enter Item Name here* (e.g Chairs,Chips,Bulbs)",
                          border: OutlineInputBorder()),
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black26),
                    child: Column(
                      children: [
                        Icon(
                          Icons.camera_alt_outlined,
                          size: 25,
                        ),
                        Text(
                          "Photo",
                          style: TextStyle(
                            color: Color(0xff00008b),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                  "Sale Price",
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.currency_rupee_rounded,
                                      size: 25,
                                      color: Colors.green,
                                    ),
                                    hintText: "Enter Price",
                                    border: OutlineInputBorder()),
                              )
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.3,
                          decoration: BoxDecoration(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                  "Purchase Price",
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.currency_rupee_rounded,
                                      size: 25,
                                      color: Colors.red,
                                    ),
                                    hintText: "Enter Price",
                                    border: OutlineInputBorder()),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Tax included",
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.3,
                            decoration: BoxDecoration(),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      "Opening Stock",
                                    ),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: "Enter Stock",
                                        border: OutlineInputBorder()),
                                  )
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2.3,
                              decoration: BoxDecoration(),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: Text(
                                        "Low Stock Alert",
                                      )),
                                  TextField(
                                    decoration: InputDecoration(
                                        suffixIcon: Icon(
                                          Icons.notifications_none_outlined,
                                          size: 25,
                                          color: Color(0xff00008b),
                                        ),
                                        hintText: "Enter Count",
                                        border: OutlineInputBorder()),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          children: [
                            Text(
                              "Add HSN and GST details",
                              style: TextStyle(
                                  color: Color(0xff00008b),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ]));
  }
}
