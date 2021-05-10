import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:story_view/story_view.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AcService extends StatefulWidget {
  @override
  _AcServiceState createState() => _AcServiceState();
}

class _AcServiceState extends State<AcService> {
  final storyController = StoryController();
  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
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
          ),
          Positioned(
            top: 15,
            child: SizedBox(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.chat_bubble),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'booking this year in Bengalore',
                  style: GoogleFonts.roboto(
                    fontSize: 15,
                  ),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
