import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urban_club/View/Screens/VariousServices/AcService.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  List<String> images = [
    'https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/1133957/pexels-photo-1133957.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
  ];
  //ScrollController controller = ScrollController();

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
                    child: menuItems(),
                    onTap: () => Get.to(AcService()),
                  ),
                  menuItems(),
                  menuItems(),
                  menuItems(),
                  menuItems(),
                  menuItems(),
                  menuItems(),
                  menuItems(),
                  menuItems(),
                  menuItems(),
                  menuItems(),
                  menuItems(),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text('Best Offer',
                  style: GoogleFonts.getFont(
                    'Roboto',
                    fontSize: 21,
                  )
                  // TextStyle(fontSize: 21, ),
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.0, left: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text('Hygin & Single use products | low contact services',
                  style: GoogleFonts.getFont(
                    'Roboto',
                    fontSize: 15,
                  )
                  // TextStyle(fontSize: 21, ),
                  ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            BestOffer(imageNumber: 0, imagebelowText: 'Flower'),
            BestOffer(imageNumber: 0, imagebelowText: 'Flower')
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            BestOffer(imageNumber: 0, imagebelowText: 'Flower'),
            BestOffer(imageNumber: 0, imagebelowText: 'Flower')
          ]),
        ],
      ),
    );
  }

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
          Text('$imagebelowText')
        ],
      )),
    );
  }

  Widget menuItems([index]) {
    return Card(
        elevation: 2,
        color: Colors.white,
        shadowColor: Colors.purpleAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.ac_unit), Text('Service')],
        ));
  }

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
}
