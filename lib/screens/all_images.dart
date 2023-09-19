import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:transparent_image/transparent_image.dart';


import 'firstScreen.dart';

class AllImages extends StatelessWidget {
  const AllImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      "images/naturalone.jpeg",
      "images/naturaltwo.jpeg",
      "images/naturalthree.jpeg",
      "images/naturalfour.jpeg",
      "images/naturalone.jpeg",
      "images/naturaltwo.jpeg",
      "images/naturalthree.jpeg",
      "images/naturalfour.jpeg",
      "images/naturalone.jpeg",
      "images/naturaltwo.jpeg",
      "images/naturalthree.jpeg",
      "images/naturalfour.jpeg",
      "images/naturalone.jpeg",
      "images/naturaltwo.jpeg",
      "images/naturalthree.jpeg",
      "images/naturalfour.jpeg"
    ];
    return Scaffold(

      body: AlignedGridView.count(
       crossAxisCount: 2,

        mainAxisSpacing: 12,
        crossAxisSpacing: 10,
        itemBuilder: (context, index) {
         // final height = image[index] * 40;

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(



              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(
                      Radius.circular(15))
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                    Radius.circular(15)),
                child: Image(
                  image: AssetImage(image[index] ),
                  fit: BoxFit.cover,
                  height: (index % 7 + 1) * 40,


                  //image: image[index],fit: BoxFit.cover,
                ),
              ),
            ),

          );
        },
        itemCount: image.length,


      ),
    );
  }
}






