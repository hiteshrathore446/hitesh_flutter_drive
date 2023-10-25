import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khata_book/Screen/Add_Item.dart';
import 'package:khata_book/Screen/Create_Busines.dart';

class Item_Screen extends StatefulWidget {
  const Item_Screen({super.key});

  @override
  State<Item_Screen> createState() => _Item_ScreenState();
}

class _Item_ScreenState extends State<Item_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/Product.png",
                    ),
                    fit: BoxFit.cover)),
          ),
          Text(
            "Add Item Get Started",
            style:
                GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Text(
                          "Manage stock in/out & get low stock alerts",
                          style: GoogleFonts.poppins(fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Text(
                          "Detailed stock history with notes",
                          style: GoogleFonts.poppins(fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Text(
                          "Track purchase / sale price & profits",
                          style: GoogleFonts.poppins(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFF00008B)),
                          child: Center(
                            child: Text(
                              "ADD PRODUCT",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Add_Item()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ]),
      ),
      backgroundColor: Color(0xFFededf5),
    ));
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
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.bold),
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
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          )),
                      TextButton(
                          style: TextButton.styleFrom(
                            primary: Color(0xFF00008B),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Choose another book ",
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          )));
}
