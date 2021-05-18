import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminScreen extends StatefulWidget {
  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  FirebaseMessaging _messaging;
  @override
  void initState() {
    super.initState();
    _messaging = FirebaseMessaging.instance;
  }
  void registerNotification() async {
 
  // ...

  // For handling the received notifications
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification notification = message.notification!;
      AndroidNotification? android = message.notification?.android!;
    });

      // Parse the message received
      RemoteNotification notification = RemoteNotification.fromJson(message);

      setState(() {
        _notificationInfo = notification;
        _totalNotifications++;
      });
    }
  
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
              child: TextFormField(
                style: GoogleFonts.raleway(fontSize: 20),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(5),
                  hintText: 'Title',
                  prefixIcon: Icon(Icons.title),
                  hintStyle: GoogleFonts.raleway(fontSize: 20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
              child: TextFormField(
                style: GoogleFonts.raleway(fontSize: 20),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(5),
                  hintText: 'Title',
                  prefixIcon: Icon(Icons.title),
                  hintStyle: GoogleFonts.raleway(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
