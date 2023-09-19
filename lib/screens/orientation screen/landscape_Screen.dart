import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_digital/screens/orientation%20screen/portrait_Screen.dart';

import '../all_images.dart';

class landscreen extends StatelessWidget {
  const landscreen({Key? key}) : super(key: key);

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

        body: SafeArea(
          child: Row(
            children: [
              Column(children: [portscreen()],),
              Column(children: [landscreen()],),
            ],
          ),
        )
    );
  }
}

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: new IconButton(
        icon: new Icon(Icons.arrow_back_ios, color: Color(0xFFFFFFFF)),
        onPressed: () => Navigator.of(context).pop(),
      ),
      elevation: 0,
      //title: Text("Hospital details" , style: TextStyle(fontSize: 17.0 , fontWeight: FontWeight.bold , color: Color(0xFFFFFFFF)) ,),
      // centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(
            FontAwesomeIcons.ellipsisVertical,
            color: Color(0xFFFFFFFF),
          ),
          onPressed: () {
            // do something
          },
        ),

      ],
    );
  }
}