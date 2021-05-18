import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class AcService extends StatefulWidget {
  @override
  _AcServiceState createState() => _AcServiceState();
}

class _AcServiceState extends State<AcService> {
  final storyController = StoryController();
  final service = new GlobalKey();
  final repair = new GlobalKey();
  final installation = new GlobalKey();
  final replacement = new GlobalKey();
  final review = new GlobalKey();

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Material(
          child: NestedScrollView(
            physics: NeverScrollableScrollPhysics(),
            //  floatHeaderSlivers: true,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  // backgroundColor: backgroundColor,
                  // collapsedHeight: 0.5.sh,
                  // expandedHeight: 0.5.sh,
                  collapsedHeight: 250,
                  expandedHeight: 300,
                  flexibleSpace: container1(),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  floating: true,
                  delegate: MyDelegate(stickyHeader()),
                )
              ];
            },
            body: bodyPart(),
          ),
        ),
      ),
    );
  }

  Widget bodyPart() {
    return SingleChildScrollView(
      child: Column(
        children: [
          acPageImage(
              title: 'Service',
              underlineTitle: '1 Ac, 2 Services per year',
              key: service,
              imageurl:
                  'https://acquire.io/wp-content/uploads/2017/12/7-Ecommerce-Technology-Trends-that-Empower-Businesses-Updated.png',
              price: '1200'),
          //>>>>>>>>>>>>>>>>>>>>repair<<<<<<<<<<<<<<<<

          acPageImage(
              title: 'Repair',
              underlineTitle: 'Split Ac Service',
              key: repair,
              price: '1500',
              imageurl:
                  'https://www.spiralytics.com/wp-content/uploads/2020/08/ecommerce-optimization.png'),
          //>>>>>>>>>>>>>>>>Installation<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

          acPageImage(
              title: 'Installation',
              underlineTitle: 'Split Ac Installation',
              key: installation,
              price: '1900',
              imageurl:
                  'https://acquire.io/wp-content/uploads/2017/12/7-Ecommerce-Technology-Trends-that-Empower-Businesses-Updated.png'),
          //>>>>>>>>>>>>>>>>review<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

          acPageImage(
              title: 'Review',
              underlineTitle: 'Split Ac review',
              key: review,
              price: '1900',
              imageurl:
                  'https://acquire.io/wp-content/uploads/2017/12/7-Ecommerce-Technology-Trends-that-Empower-Businesses-Updated.png'),
          //>>>>>>>>>>>>>>>>replacement<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

          acPageImage(
              title: 'Replacement',
              underlineTitle: 'Split Ac Replacement',
              key: replacement,
              price: '1900',
              imageurl:
                  'https://acquire.io/wp-content/uploads/2017/12/7-Ecommerce-Technology-Trends-that-Empower-Businesses-Updated.png')
        ],
      ),
    );
  }

  Widget acPageImage({
    key,
    imageurl,
    price,
    underlineTitle,
    title,
  }) {
    return Padding(
      key: key,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 6.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                height: 23,
                child: Text(
                  '$title',
                  style: GoogleFonts.raleway(
                    fontSize: 23,
                  ),
                ),
              ),
            ),
          ),
          new Container(
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    fit: BoxFit.fill, image: NetworkImage('$imageurl'))),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$underlineTitle',
                  style: GoogleFonts.raleway(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.0,
                  ),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: EdgeInsets.only(left: 4.0, right: 4.0, top: 3),
                        child: Text(
                          'ADD +',
                          style: GoogleFonts.raleway(
                            color: Colors.blue,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            '\$$price',
            style: GoogleFonts.raleway(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.orange),
          ),
          Divider()
        ],
      ),
    );
  }

  Widget stickyHeader() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 50,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            bookmarkChip(
                indexposition: service, name: 'Service', color: Colors.white),
            bookmarkChip(
                indexposition: repair, name: 'Repair', color: Colors.white),
            bookmarkChip(
                indexposition: installation,
                name: 'Installation & Uninstall',
                color: Colors.white),
            bookmarkChip(
                indexposition: review, name: 'Review', color: Colors.white),
            bookmarkChip(
                indexposition: replacement,
                name: 'Replacement',
                color: Colors.white),
          ],
        ),
      ),
    );
  }

  Widget bookmarkChip({indexposition, name, color}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => Scrollable.ensureVisible(
          indexposition.currentContext!,
          duration: Duration(milliseconds: 400),
          curve: Curves.easeIn,
        ),
        child: Chip(
          side: BorderSide(color: Colors.black, width: 2),
          padding: EdgeInsets.all(8.0),
          elevation: 5,
          backgroundColor: color,
          // avatar: CircleAvatar(

          //   backgroundColor: Colors.grey.shade800,
          //   child: Text(''),
          // ),
          label: Text('$name'),
          labelStyle: GoogleFonts.raleway(
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  Widget container1() {
    return Container(
      color: Colors.blue,
      height: 350,
      width: double.infinity,
      child: StoryView(
          repeat: true,
          progressPosition: ProgressPosition.bottom,
          storyItems: [
            StoryItem.pageVideo(
                "https://firebasestorage.googleapis.com/v0/b/tactile-timer-267314.appspot.com/o/Hang%20-%2030902.mp4?alt=media&token=74eec54b-7c4a-43dc-bd7a-522a494b69c0",
                caption: "This the first video",
                controller: storyController,
                shown: true,
                imageFit: BoxFit.fitWidth,
                duration: Duration(seconds: 24)),
            StoryItem.pageVideo(
                "https://firebasestorage.googleapis.com/v0/b/tactile-timer-267314.appspot.com/o/Hang%20-%2030902.mp4?alt=media&token=74eec54b-7c4a-43dc-bd7a-522a494b69c0",
                caption: "This the second video",
                controller: storyController,
                shown: true,
                duration: Duration(seconds: 24)),
          ],
          controller: storyController),
    );
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate {
  MyDelegate(this.widget);
  final widget;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return widget;
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
