import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khata_book/Screen/Splash.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(Khatabook());
}

void _allowOrientationChange() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
}

class Khatabook extends StatefulWidget {
  const Khatabook({super.key});

  @override
  State<Khatabook> createState() => _KhatabookState();
}

class _KhatabookState extends State<Khatabook> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash_screen(),
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context)
                .textTheme, // Use Google Fonts with existing text styles
          ),
        ));
  }
}
