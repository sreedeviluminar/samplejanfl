import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListWithBuilder(),
  ));
}

class ListWithBuilder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ListWithBuilderState();
}

class ListWithBuilderState extends State {
  List<String> images = [
    "assets/images/background.jpg",
    "assets/images/teddy.jpg",
        "assets/images/background.jpg",
    "assets/images/teddy.jpg",
        "assets/images/background.jpg",
    "assets/images/teddy.jpg",
        "assets/images/background.jpg",
    "assets/images/teddy.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List 3"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {

          return Card(
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage(images[index])),
              title: Text("Second Tile"),
            ),
          );
        },
        itemCount: images.length,
        padding: EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
