import 'package:flutter/material.dart';

class StreamBuilderLearningtwo extends StatefulWidget {
  @override
  _StreamBuilderLearningtwoState createState() =>
      _StreamBuilderLearningtwoState();
}

class _StreamBuilderLearningtwoState extends State<StreamBuilderLearningtwo> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('StreamBuilderparttwo')),
        body: Center(
          child: StreamBuilder(
            stream: Counter(),
            builder: (context, snapshot) {
              if (snapshot.data != null) {
                return Text('${snapshot.data.toString()}');
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ));
  }

  Stream<int?> Counter() async* {
    while (count <= 100) {
      await Future.delayed(Duration(seconds: 1));
      yield count++;
    }
  }
}
