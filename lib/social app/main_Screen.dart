import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_digital/to_do_app/incomplete.dart';
import 'package:go_digital/to_do_app/task_model.dart';
import 'package:go_digital/to_do_app/to_do_data.dart';

import 'favorite_item.dart';
import 'feed.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  updateUi() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {


    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(

          bottom: TabBar(
            onTap: (index) {
              // Tab index when user select it, it start from zero
            },
            tabs: [
              Tab(text: "all posts", icon: Icon(Icons.app_shortcut_rounded)),
              Tab(text: "Favorite", icon: Icon(Icons.favorite)),

            ],
          ),
          title: Text('Social App'),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            FeedScreen(updateUi),
            FavoriteScreen(updateUi),

            //incompleteTask(updateUi),
          ],
        ),
      ),
    );
  }
}
