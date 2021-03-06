//import 'dart:async';
// import 'package:data_connection_checker/data_connection_checker.dart';
import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
//import 'package:provider/provider.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:urban_club/util/sharePreference_instance.dart';
//import 'Controller/application_starter_controller.dart';
//import 'StreamBuilderLearning2.dart';
//import 'View/Screens/MainScreen.dart';
//import 'View/Screens/demo.dart';
import 'View/SigninSignUp/LoginView.dart';
//import 'View/SigninSignUp/errorrpage.dart';
//import 'streamBuilderLearning.dart';
//import 'View/DashBoard/Dashboard.dart';
//import 'View/SigninSignUp/welcomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';

// const AndroidNotificationChannel channel = AndroidNotificationChannel(
//     'Testing channel',
//     'Testing notification',
//     'This channel is used for important notification',
//     importance: Importance.low,
//     playSound: true);
//to initialize flutter local notification plugin
// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();
//to initialize firebasemessage plugin
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('The firebase background message initialized: ${message.messageId}');
}
Future<void> _firebasemessagingHandler()async {
  
}


Future<void> main() async {
  //this is to initialize all the plugin
  WidgetsFlutterBinding.ensureInitialized();
  
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) async {
    sharePrefereceInstance.init();
    await Firebase.initializeApp();
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // await flutterLocalNotificationsPlugin
    //     .resolvePlatformSpecificImplementation<
    //         AndroidFlutterLocalNotificationsPlugin>()
    //     ?.createNotificationChannel(channel);
    // await FirebaseMessaging.instance
    //     .setForegroundNotificationPresentationOptions(
    //         alert: true, badge: true, sound: true);
    runApp(
      MyApp(),
    );
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(accentColor: Colors.black),
      debugShowCheckedModeBanner: false,
      // initialBinding: DashboardBinding(),
      // initialRoute: '/',
      // getPages: [
      //   GetPage(
      //       name: '/home',
      //       page: () => MainScreen(),
      //       transition: Transition.fadeIn),
      //   GetPage(
      //       name: '/signup',
      //       page: () => Loginview(),
      //       transition: Transition.leftToRight),
      // ],
      // unknownRoute: GetPage(name: '/errorpage', page: () => ErrorPage()),
      // home: MyApp( ),
      //home: Loginview(),
      home: Loginview(),
      //home: DemoScreen(),
    );
  }
}

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   // var returnWidget1 = WelcomeScreen();

//   var scafoldKey = GlobalKey<FormState>();
//   // ignore: non_constant_identifier_names
//   var InternetStatus = "Unknown";
//   var contentmessage = "Unknown";
//   final applicationStarterController = Get.put(ApplicationStarterController());

//   // @override
//   // void initState() {
//   //   // checkConnection(context);
//   //   super.initState();
//   // }

//   // @override
//   // void dispose() {
//   //   // listener.cancel();
//   //   super.dispose();
//   // }

//   // @override
//   // Widget build(BuildContext context) {
//   //   var width = MediaQuery.of(context).size.width;
//   //   var height = MediaQuery.of(context).size.height;

//   //   return ScreenUtilInit(
//   //     designSize: Size(width, height),
//   //     allowFontScaling: false,
//   //     builder: () => Obx(() {
//   //       // var applicationState = applicationStarterController.state.value;
//   //       // return Container();

//   //       // if (applicationState == ApplicationState.LoggedIn) {
//   //       //   Get.offNamed('/home');
//   //       // } else if (applicationState == ApplicationState.LoggedOut) {
//   //       //   Get.offNamed('/signup');
//   //       // } else {
//   //       //   Get.offNamed('/signup');
//   //       // }
//   //       return Text('');
//   //     }),
//   //   );
//   // }

// //   checkConnection(BuildContext context) async {
// //     listener = DataConnectionChecker().onStatusChange.listen((status) {
// //       switch (status) {
// //        case DataConnectionStatus.connected:
// //          InternetStatus = "Connected to the Internet";
// //          contentmessage = "Connected to the Internet";
// //          _showDialog(InternetStatus, contentmessage, context);
// //          showToast(InternetStatus, red);
// //          break;
// //         case DataConnectionStatus.disconnected:
// //           InternetStatus = "You are disconnected to the Internet. ";
// //            contentmessage = "Please check your internet connection";
// //            _showDialog(InternetStatus, contentmessage, context);

// //            showToast(InternetStatus, red);
// //           break;
// //       }
// //     });
// //     return await DataConnectionChecker().connectionStatus;
// //   }
// }
