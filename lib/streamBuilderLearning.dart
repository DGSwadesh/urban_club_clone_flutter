import 'package:flutter/material.dart';

class StreamBuilderLearning extends StatefulWidget {
  @override
  _StreamBuilderLearningState createState() => _StreamBuilderLearningState();
}

class _StreamBuilderLearningState extends State<StreamBuilderLearning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('StreamBuilder Learning')),
        body: Center(
          child: FutureBuilder(
            future: showname('joy'),
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              if (snapshot.data != null) {
                return Text(snapshot.data!);
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ));
  }

  Future<String> showname(String name) async {
    await Future.delayed(Duration(seconds: 5));
    return 'my name is:' + name;
  }
}
