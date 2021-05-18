import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:urban_club/View/Screens/VariousServices/AcService.dart';
import 'package:urban_club/View/admin/adminScreen.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  //final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  // String messageTitle = "Empty";
  // String notificationAlert = "alert";

  // FirebaseMessaging messaging = FirebaseMessaging.instance;
  // late String token;
  // Future<void> getToken() async {
  //   token = (await messaging.getToken(
  //     vapidKey:
  //         "BDr-kXMI15f6zbHT7emIvCltjEPWBtcbqjT1U3UP-_ucJrQJgslfyTE2k7QQVDdULGcBj-Hjf4DCAp1Vd7D0Cgwv",
  //   ))!;
  // }

  List<String> images = [
    'https://acquire.io/wp-content/uploads/2017/12/7-Ecommerce-Technology-Trends-that-Empower-Businesses-Updated.png',
    'https://www.spiralytics.com/wp-content/uploads/2020/08/ecommerce-optimization.png'
  ];
  //ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    //getToken();
    //initOnesignal();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            //carouselController: controller,
            items: [
              CarasolItem(imageNumber: 0),
              CarasolItem(imageNumber: 1),
              CarasolItem(imageNumber: 1),
            ],
            options: CarouselOptions(
              autoPlayCurve: Curves.easeInOut,
              enlargeCenterPage: true,
              autoPlay: true,
              height: 150,
              initialPage: 0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.0,
              right: 10,
              top: 10,
            ),
            child: Container(
              //height: .5.sh,
              height: 300,
              width: double.infinity,
              color: Colors.blue[50],
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 1,
                crossAxisSpacing: 2,
                crossAxisCount: 4,
                children: [
                  InkWell(
                    child: menuItems(services: 'Ac Service \n& Repair'),
                    onTap: () => Get.to(AcService()),
                  ),
                  menuItems(services: 'Painters'),
                  menuItems(services: 'Appliance\n Repair'),
                  menuItems(services: 'DisInfection'),
                  menuItems(services: 'Cleaning & DisInfection'),
                  menuItems(services: 'Salon for Women'),
                  menuItems(services: 'Massage for Women'),
                  menuItems(services: 'Salon for Men'),
                  menuItems(services: 'Plumbers'),
                  menuItems(services: 'Carpenters'),
                  menuItems(services: 'Pest Control'),
                  menuItems(services: 'Electrician'),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text('Best Offer',
                  style: GoogleFonts.raleway(
                      fontSize: 21, fontWeight: FontWeight.bold)
                  // TextStyle(fontSize: 21, ),
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.0, left: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text('Hygin & Single use products | low contact services',
                  style: GoogleFonts.raleway(
                    fontSize: 15,
                  )
                  // TextStyle(fontSize: 21, ),
                  ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            BestOffer(imageNumber: 0, imagebelowText: 'E-Commerce'),
            BestOffer(imageNumber: 0, imagebelowText: 'E-Commerce')
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            BestOffer(imageNumber: 0, imagebelowText: 'E-Commerce'),
            BestOffer(imageNumber: 0, imagebelowText: 'E-Commerce')
          ]),
          TextButton(
              onPressed: () => Get.to(AdminScreen()),
              child: Text('Admin Panel'))
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget BestOffer({int? imageNumber, String? imagebelowText}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          //decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Column(
        children: [
          Container(
            height: 100,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      images[imageNumber!],
                    ))),

            // child: Image.network(
            //   images[imageNumber],
            //   fit: BoxFit.cover,
            // ),
          ),
          Text(
            '$imagebelowText',
            style: GoogleFonts.raleway(fontSize: 15),
          )
        ],
      )),
    );
  }

  Widget menuItems({services}) {
    return Card(
        elevation: 2,
        color: Colors.white,
        shadowColor: Colors.purpleAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://img.icons8.com/office/40/000000/sale.png",
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '$services',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontSize: 10,
              ),
            )
          ],
        ));
  }

  // ignore: non_constant_identifier_names
  Widget CarasolItem({imageNumber}) {
    return Container(
      height: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        image: DecorationImage(
            image: NetworkImage(images[imageNumber]), fit: BoxFit.cover),
      ),
    );
  }

//   Future<void> initOnesignal() async {
// //Remove this method to stop OneSignal Debugging
//     OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

//     OneSignal.shared.init("d76c0e4a-8182-4426-8770-0c9c7875775d");
//     OneSignal.shared
//         .setInFocusDisplayType(OSNotificationDisplayType.notification);
//   }
}
