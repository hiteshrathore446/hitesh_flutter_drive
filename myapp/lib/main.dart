import 'package:flutter/material.dart';
import 'package:myap/Forms/Welcome_Page.dart';

void main() {
  runApp(myaap());
}

class myaap extends StatelessWidget {
  const myaap({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: welcome_Page());
  }
}
