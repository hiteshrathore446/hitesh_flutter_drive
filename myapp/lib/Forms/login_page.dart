import 'package:flutter/material.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => login_pageState();
}

class login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      Container(
          margin: EdgeInsets.all(25),
          height: 700,
          width: 400,
          decoration: BoxDecoration(
              border: Border(),
              boxShadow: [BoxShadow(blurRadius: 25.0, color: Colors.red)],
              color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
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
                              decoration: InputDecoration(
                                  hintText: "Email or phone number"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: TextField(
                                decoration:
                                    InputDecoration(hintText: "password"),
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
