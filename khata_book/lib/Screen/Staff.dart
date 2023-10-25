import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khata_book/Screen/Contact.dart';

class Staff extends StatefulWidget {
  const Staff({super.key});

  @override
  State<Staff> createState() => _StaffState();
}

class _StaffState extends State<Staff> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff00008b),
          title: Text(
            "Add Staff",
            style:
                GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, // Aligns containers to the top and bottom
          children: [
            Container(
              width: double.infinity, // Container takes full width
              height: MediaQuery.of(context).size.height /
                  2.0, // Adjust the height as needed
              decoration: BoxDecoration(color: Color(0xffe5e5e5)),
            ),
            Container(
              width: double.infinity, // Container takes full width
              height: MediaQuery.of(context).size.height /
                  2.8, // Adjust the height as needed
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "HOW IT WORKS",
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Add Staff,Business Partners or Family member",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(children: [
                            Container(
                              decoration: BoxDecoration(color: Colors.white),
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.edit_calendar_outlined,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                            "Give access to Partners & Staff on their phone",
                                            style: GoogleFonts.poppins(
                                              fontSize: 14,
                                            )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          "number",
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
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
                                    decoration:
                                        BoxDecoration(color: Colors.white),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.notification_add_rounded,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Text(
                                                  "manage Salary,Attendance & Payment for",
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                  )),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Text(
                                                "staff",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ]),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.white),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                    primary:
                                        Color(0xffa40951), // Background color
                                    onPrimary:
                                        Colors.black, // Text color when pressed
                                    elevation: 5, // Elevation
                                    fixedSize: Size(150, 40),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          10), // Button shape
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                ContactPermissionScreen()));
                                  },
                                  icon: Icon(
                                    Icons.person_add_rounded,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    "ADD STAFF",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
