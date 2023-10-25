import 'package:flutter/material.dart';

class collections extends StatefulWidget {
  const collections({super.key});

  @override
  State<collections> createState() => _collectionsState();
}

class _collectionsState extends State<collections> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Collection"),
        backgroundColor: Color(0xff00008b),
        elevation: 0,
      ),
    ));
  }
}
