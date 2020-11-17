import 'package:animationtask/anim_container_widget.dart';
import 'package:flutter/material.dart';

class ListViewAnimation extends StatefulWidget {
  @override
  _ListViewAnimationState createState() => _ListViewAnimationState();
}

class _ListViewAnimationState extends State<ListViewAnimation> {
  List<String> networkUrl = [
    "assets/images/2.jpeg",
        "assets/images/3.jpeg",
        "assets/images/4.jpeg",
        "assets/images/5.jpeg",
        "assets/images/6.jpeg",
        "assets/images/7.jpeg",
        "assets/images/8.jpeg",
        "assets/images/9.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.red,
      body: ListView.builder(
        itemCount: networkUrl.length,
        itemBuilder: (context, index) {
          return AnimContainerWidget(index, networkUrl[index]);
        },
      ),
    );
  }
}
