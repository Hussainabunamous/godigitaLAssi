import 'package:flutter/material.dart';
import 'package:go_digital/social%20app/insta_item.dart';

import 'instadata.dart';

class FavoriteScreen extends StatelessWidget {
  Function fun;
  FavoriteScreen(this.fun);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      body: ListView.builder(
        itemCount: insta_data.where((element) => element.isFavorite == true).length,
        itemBuilder:(context, index) {
          return InstaItem(insta_data.where((element) => element.isFavorite == true).toList()[index],fun);
        }, ),
    );
  }
}
