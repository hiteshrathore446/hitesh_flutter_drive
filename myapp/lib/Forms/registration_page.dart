import 'package:flutter/material.dart';

class registration_page extends StatefulWidget {
  const registration_page({super.key});

  @override
  State<registration_page> createState() => registration_pageState();
}

class registration_pageState extends State<registration_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      Container(
          margin: EdgeInsets.all(10),
          height: 700,
          width: 400,
          decoration: BoxDecoration(
              border: Border(),
              boxShadow: [BoxShadow(blurRadius: 25.0, color: Colors.red)],
              color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Text(
                  "Sign In",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(),
                        child: Column(
                          children: [
                            TextField(
                              decoration:
                                  InputDecoration(hintText: "Full Name"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: TextField(
                                decoration:
                                    InputDecoration(hintText: "Phone Number"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: TextField(
                                decoration:
                                    InputDecoration(hintText: "Email Address"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: TextField(
                                decoration:
                                    InputDecoration(hintText: "Password"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Confirm Password"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(),
                                  onPressed: () {},
                                  child: Text(
                                    "Sign In",
                                    style: TextStyle(fontSize: 18),
                                  )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, right: 180),
                              child: Text(
                                "Allready have a account?",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ))
    ])));
  }
}
