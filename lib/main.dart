import 'dart:async';
// import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:urban_club/util/sharePreference_instance.dart';
import 'Controller/application_starter_controller.dart';
import 'View/DashBoard/Dashboard.dart';
import 'View/SigninSignUp/welcomeScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // DashboardBinding().dependencies();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) async {
    sharePrefereceInstance.init();
    runApp(
      StartApp(),
    );
  });
}

class StartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(accentColor: Colors.black),
      debugShowCheckedModeBanner: false,
      // initialBinding: DashboardBinding(),
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // var returnWidget1 = WelcomeScreen();

  var scafoldKey = GlobalKey<FormState>();
  var InternetStatus = "Unknown";
  var contentmessage = "Unknown";
  final applicationStarterController = Get.put(ApplicationStarterController());

  @override
  void initState() {
    // checkConnection(context);
    super.initState();
  }

  @override
  void dispose() {
    // listener.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return ScreenUtilInit(
        designSize: Size(width, height),
        allowFontScaling: false,
        builder: () => Obx(() {
          var applicationState = applicationStarterController.state.value;
          return Container();

          // if (applicationState == ApplicationState.LoggedIn) {
          //   return returnWidget1;
          // } else if (applicationState == ApplicationState.LoggedOut) {
          //   return returnWidget1;
          // } else {
          //   return returnWidget1;
          // }
        }),
      );
  }

//   checkConnection(BuildContext context) async {
//     listener = DataConnectionChecker().onStatusChange.listen((status) {
//       switch (status) {
//        case DataConnectionStatus.connected:
//          InternetStatus = "Connected to the Internet";
//          contentmessage = "Connected to the Internet";
//          _showDialog(InternetStatus, contentmessage, context);
//          showToast(InternetStatus, red);
//          break;
//         case DataConnectionStatus.disconnected:
//           InternetStatus = "You are disconnected to the Internet. ";
//            contentmessage = "Please check your internet connection";
//            _showDialog(InternetStatus, contentmessage, context);

//            showToast(InternetStatus, red);
//           break;
//       }
//     });
//     return await DataConnectionChecker().connectionStatus;
//   }
}
