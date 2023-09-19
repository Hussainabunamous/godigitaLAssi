import 'package:flutter/material.dart';
import 'package:go_digital/heart_screen.dart';
import 'package:go_digital/screens/Assignment_one.dart';
import 'package:go_digital/screens/drawer_screen.dart';
import 'package:go_digital/social%20app/feed.dart';
import 'package:go_digital/screens/firstScreen.dart';
import 'package:go_digital/screens/time.dart';
import 'package:go_digital/social%20app/main_Screen.dart';
import 'package:go_digital/to_do_app/incomplete.dart';
import 'package:go_digital/to_do_app/maim_page.dart';
import 'package:go_digital/to_do_app/mainapp.dart';
import 'package:go_digital/to_do_app/to_do_widget.dart';

import 'assi 2/assi_2.dart';
import 'food_screen.dart';
import 'insta_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  AssiHomeScreen(),
      //MainApp(),
    );
  }
}


