import 'package:flutter/material.dart';
import 'package:myap/Forms/login_page.dart';
import 'package:myap/Forms/registration_page.dart';

class welcome_Page extends StatefulWidget {
  const welcome_Page({super.key});

  @override
  State<welcome_Page> createState() => _welcome_PageState();
}

class _welcome_PageState extends State<welcome_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 700,
          width: 400,
          decoration: BoxDecoration(
              border: Border(),
              boxShadow: [BoxShadow(blurRadius: 25.0, color: Colors.red)],
              color: Colors.black),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 20),
                child: Container(
                  margin: EdgeInsets.all(5),
                  height: 80,
                  decoration: BoxDecoration(border: Border()),
                  child: Column(
                    children: [
                      Text(
                        "Welcome!!",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.blue,
                        ),
                      ),
                      Text(
                        "Create an account and enjoy our services.",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 0,
                          ),
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.person,
                        size: 150,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(border: Border()),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Column(
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                minimumSize: const Size.fromHeight(40),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const registration_page()));
                              },
                              child: Text("Create an account")),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                  minimumSize: const Size.fromHeight(40),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const login_page()));
                                },
                                child: Text("Log in")),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
