import 'package:flutter/material.dart';
import 'package:go_digital/social%20app/insta_item.dart';

import 'instadata.dart';

class FeedScreen extends StatefulWidget {
  Function fun;
  FeedScreen(this.fun);
  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      body: ListView.builder(
          itemCount: insta_data.length,
          itemBuilder:(context, index) {
            return InstaItem(insta_data[index],widget.fun);
            setState(() {

            });
          }, ),
    );
  }
}
