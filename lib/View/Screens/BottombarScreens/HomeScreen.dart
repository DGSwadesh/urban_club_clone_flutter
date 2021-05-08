import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
          Container(
            //height: .5.sh,
            height: 300,
            width: double.infinity,
            color: Colors.blue[50],
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 1,
                crossAxisSpacing: 2,
                crossAxisCount: 4,
                children: [
                  InkWell(
                    child: menuItems(),
                    onTap: () => null,
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
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text('Best Offer',
                  style: GoogleFonts.getFont(
                    'Spartan',
                    fontSize: 21,
                  )
                  // TextStyle(fontSize: 21, ),
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.0, left: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text('Hygin & Single use products | low contact services',
                  style: GoogleFonts.getFont(
                    'Hepta Slab',
                    fontSize: 14,
                  )
                  // TextStyle(fontSize: 21, ),
                  ),
            ),
          ),
          Row(children: [
            menuItems(),
          ]),
        ],
      ),
    );
  }

  Widget menuItems() {
    return Card(
      elevation: 10,
      color: Colors.white,
      shadowColor: Colors.purpleAccent,
    );
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
