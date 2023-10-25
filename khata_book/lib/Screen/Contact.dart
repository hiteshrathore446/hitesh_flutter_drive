import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
//import 'package:contacts_service/contacts_service.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContactPermissionScreen(),
    );
  }
}

class ContactPermissionScreen extends StatefulWidget {
  @override
  _ContactPermissionScreenState createState() =>
      _ContactPermissionScreenState();
}

class _ContactPermissionScreenState extends State<ContactPermissionScreen> {
  @override
  void initState() {
    super.initState();
    requestContactPermission();
  }

  Future<void> requestContactPermission() async {
    final PermissionStatus status = await Permission.contacts.request();
    if (status.isGranted) {
      // Permission granted, navigate to the contact number screen.
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ContactPermissionScreen()));
    } else {
      // Permission denied, show an error message or handle it accordingly.
      print("Permission denied");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Permission"),
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
