import 'dart:ui';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:urban_club/View/Screens/MainScreen.dart';
//import 'package:urban_club/main.dart';
import 'package:urban_club/util/sharePreference_instance.dart';

//import 'package:firebase_core/firebase_core.dart';
//import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class Loginview extends StatefulWidget {
  @override
  _LoginviewState createState() => _LoginviewState();
}

class _LoginviewState extends State<Loginview> {
  initState() {
    super.initState();
    FirebaseMessaging.onMessage.listen(
      (RemoteMessage message) {
        RemoteNotification notification = message.notification!;
        print(notification.title);
        //AndroidNotification android = message.notification!.android!;
        // flutterLocalNotificationsPlugin.show(
        //   notification.hashCode,
        //   notification.title,
        //   notification.body,
        //   NotificationDetails(
        //     android: AndroidNotificationDetails(
        //       channel.id,
        //       channel.name,
        //       channel.description,
        //       playSound: false,
        //      // icon: '@mipmap/ic_launcher',
        //     ),
        //   ),
        // );
      },
    );
    FirebaseMessaging.onMessageOpenedApp.listen(
      (RemoteMessage message) {
        print('A new message openApp event was published');
        RemoteNotification notification = message.notification!;
        //AndroidNotification android = message.notification!.android!;
        showDialog(
          context: context,
          builder: (_) {
            return AlertDialog(
              title: Text(notification.title!),
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(notification.body!),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
    //initPlatformState();
  }

  // String appId = "d76c0e4a-8182-4426-8770-0c9c7875775d";
  // Future<void> initPlatformState() async {
  //   await OneSignal.shared.setAppId(appId);
  // }
  void sendnotification() {
    setState(
      () {},
    );
    // flutterLocalNotificationsPlugin.show(
    //   0,
    //   'local notification Testting',
    //   'How you are doing',
    //   NotificationDetails(
    //     android: AndroidNotificationDetails(
    //         channel.id, channel.name, channel.description,
    //         importance: Importance.high,
    //         color: Colors.blue,
    //         playSound: true,
    //         icon: '@mipmap/ic_launcher'),
    //   ),
    // );
  }

  SharePreferenceInstance preferenceInstance = SharePreferenceInstance();
  _buildTextField(IconData icon, String hintText) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      decoration: BoxDecoration(color: Colors.black54),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: Icon(
              icon,
              color: Colors.green,
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.white)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              'https://i.pinimg.com/564x/67/11/95/671195f7df6be4432ac1e0b079bf27a1.jpg',
              // Image.asset(
              //   'asset/background.jpg',
              fit: BoxFit.cover,
              color: Colors.black38,
              colorBlendMode: BlendMode.darken,
            ),
          ),
          // Positioned(
          //   top: 50,
          //   left: 20,
          //   child: IconButton(
          //     onPressed: () {},
          //     icon: Icon(
          //       Icons.ac_unit,
          //       color: Colors.white,
          //     ),
          //   ),
          // )
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    'Urban pro ',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  Text(
                    'Sign in to your account',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  _buildTextField(Icons.mail_outline, 'Email'),
                  SizedBox(
                    height: 20,
                  ),
                  _buildTextField(Icons.email_outlined, 'Password'),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forget Password',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    minWidth: double.maxFinite,
                    color: Colors.red[700],
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(bottom: 100),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.white)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            // Icon(
                            //   FontAwesomeIcons.google,
                            //   color: Colors.white,
                            // ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Google',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        VerticalDivider(
                          color: Colors.white,
                        ),
                        Row(
                          children: [
                            // Icon(
                            //   FontAwesomeIcons.facebook,
                            //   color: Colors.white,
                            // ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Facebook',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.off(() => MainScreen());
                      },
                      child: Text('Skip')),
                  TextButton(
                      onPressed: () {
                        sendnotification();
                      },
                      child: Text('show notification'))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
