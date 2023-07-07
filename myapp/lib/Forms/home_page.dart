import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 750,
            decoration:
                BoxDecoration(border: Border.all(), color: Colors.white),
          )
        ],
      ),
    );
  }
}
