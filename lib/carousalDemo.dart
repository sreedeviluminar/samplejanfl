import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SliderDemo(),
  ));
}

class SliderDemo extends StatelessWidget {
  List<String> images = [
    "https://images.unsplash.com/photo-1610878180933-123728745d22?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FuYWRhJTIwbmF0dXJlfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821__480.jpg",
    "https://images.unsplash.com/photo-1610878180933-123728745d22?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FuYWRhJTIwbmF0dXJlfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821__480.jpg", "https://images.unsplash.com/photo-1610878180933-123728745d22?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FuYWRhJTIwbmF0dXJlfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821__480.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carousal Slider"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: CarouselSlider.builder(
            itemCount: images.length,
            options: CarouselOptions(
              enlargeCenterPage: true,
              height: 600,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 3),

            ),
            itemBuilder: (context, i, id) {
              return GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        color: Colors.red,
                      )),
                  child: ClipRRect(
                    child: Image.network(images[i] ,fit: BoxFit.cover,),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                onTap: () {
                  print("Haii");
                },
              );
            }),
      ),
    );
  }
}
