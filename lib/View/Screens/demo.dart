import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class DemoScreen extends StatefulWidget {
  @override
  _DemoScreenState createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  final storyController = StoryController();
  final first = new GlobalKey();
  final second = new GlobalKey();
  final third = new GlobalKey();
  final fourth = new GlobalKey();
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                height: 23,
                child: Text(
                  'Service',
                  style: GoogleFonts.roboto(
                    fontSize: 23,
                  ),
                ),
              ),
            ),
          ),

          acPageImage(
              underlineTitle: '1 Ac, 2 Services per year',
              key: first,
              imageurl:
                  'https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
              price: '1200'),
          //>>>>>>>>>>>>>>>>>>>>repair<<<<<<<<<<<<<<<<
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                height: 23,
                child: Text(
                  'Repair',
                  style: GoogleFonts.roboto(
                    fontSize: 23,
                  ),
                ),
              ),
            ),
          ),

          acPageImage(
              underlineTitle: 'Split Ac Service',
              key: second,
              price: '1500',
              imageurl:
                  'https://images.pexels.com/photos/1133957/pexels-photo-1133957.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          //>>>>>>>>>>>>>>>>Installation<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                height: 23,
                child: Text(
                  'Installation',
                  style: GoogleFonts.roboto(
                    fontSize: 23,
                  ),
                ),
              ),
            ),
          ),
          acPageImage(
              underlineTitle: 'Split Ac Installation',
              key: third,
              price: '1900',
              imageurl:
                  'https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
        ],
      ),
    );
  }

  Widget acPageImage({key, imageurl, price, underlineTitle}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new Container(
            key: key,
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
                  style: GoogleFonts.roboto(
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
                          style: GoogleFonts.roboto(
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
            style: GoogleFonts.roboto(
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          bookmarkChip(indexposition: first, name: 'Repair'),
          bookmarkChip(indexposition: second, name: 'Service'),
          bookmarkChip(indexposition: third, name: 'Installation & Uninstall'),
        ],
      ),
    );
  }

  Widget bookmarkChip({indexposition, name}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => Scrollable.ensureVisible(indexposition.currentContext!,
            duration: Duration(milliseconds: 400), curve: Curves.easeIn),
        child: Chip(
          // avatar: CircleAvatar(

          //   backgroundColor: Colors.grey.shade800,
          //   child: Text(''),
          // ),
          label: Text('$name'),
          labelStyle: GoogleFonts.roboto(
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  Widget container1() {
    return Container(
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
  double get minExtent => 40;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
