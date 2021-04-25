// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:icchedanaAudioStreaming/View/DashBoard/Dashboard.dart';
// import 'package:icchedanaAudioStreaming/util/constant.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:translator/translator.dart';

// class WelcomeScreen extends StatefulWidget {
//   @override
//   _WelcomeScreenState createState() => _WelcomeScreenState();
// }

// class _WelcomeScreenState extends State<WelcomeScreen> {
//   GoogleTranslator translator = GoogleTranslator();
//   // var translation =  translator.translate('Translation', from: 'en', to: 'bn');
//   beng() async {
//     var translation =
//         await translator.translate("icchedana", from: 'en', to: 'bn');
//     print(translation);
//     print("example".translate(to: 'bn'));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           width: 1.sw,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage(backgroundImg),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset(logoImg),
//               SizedBox(
//                 height: 15,
//               ),
//               Text(
//                 'WELCOME TO ইচ্ছেডানা',
//                 style: TextStyle(
//                     fontSize: 25,
//                     color: white,
//                     height: 2,
//                     fontWeight: FontWeight.w500),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Text(
//                 'YOUR WORLD OF BENGALI POEMS & AUDIO STORIES',
//                 style: TextStyle(
//                     fontSize: 15,
//                     color: white,
//                     height: 2,
//                     fontWeight: FontWeight.w500),
//               ),
//               SizedBox(
//                 height: 0.08.sh,
//               ),
//               SizedBox(
//                 height: 0.07.sh,
//                 width: 0.9.sw,
//                 child: RaisedButton(
//                   color: white,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                   onPressed: () {
//                     // googleLogin();
//                      Get.to(DashBoard());
//                   },
//                   child: Row(
//                     // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       SizedBox(
//                         width: 0.2.sw,
//                       ),
//                       SvgPicture.asset(
//                         googleImg,
//                       ),
//                       SizedBox(
//                         width: 0.03.sw,
//                       ),
//                       Text('Continue With Google'),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   //google-------------------------------------------------------------------
//   void googleLogin() async {
//     try {
//       GoogleSignIn _googleSignIn = GoogleSignIn(
//         scopes: [
//           'email',
//           'https://www.googleapis.com/auth/contacts.readonly',

//           // you can add extras if you require
//         ],
//       );
//       // _googleSignIn.signIn().then((GoogleSignInAccount acc) async {
//       //   // GoogleSignInAuthentication auth = await acc.authentication;
//       //   await _googleSignIn.signIn();

//       //   // print(acc.id);
//       //   // print(acc.email);
//       //   // print(acc.displayName);
//       //   // print(acc.photoUrl);
//       //   acc.authentication.then((GoogleSignInAuthentication auth) async {
//       //     // print(auth.idToken);
//       //     // print(auth.accessToken);
//       //     Get.to(DashBoard());
//       //   });
//       // });
//       // _googleSignIn.signOut();
//     } catch (e) {
//       print(e);
//     }
//   }
// }
