import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_digital/screens/Assignment_one.dart';
import 'package:lottie/lottie.dart';

import 'orientation screen/landscape_Screen.dart';
import 'orientation screen/portrait_Screen.dart';



class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double hight = MediaQuery.of(context).size.height;
    double widht = MediaQuery.of(context).size.width;
    Orientation o = MediaQuery.of(context).orientation;
    log(hight.toString());
    log(widht.toString());
    return Scaffold(
      appBar: AppBar(title: Text("drawer"),centerTitle: true,),
      drawer: CustomeDrawer(),
      body: SafeArea(child: Column(
        children: [],
      ),),
    );
  }
}

class CustomeDrawer extends StatelessWidget {
  const CustomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: SingleChildScrollView(
        child: Column(
          children: [

            UserAccountsDrawerHeader(accountName: Text("hussain"), accountEmail: Text("hussainabunamous@gmail.com"),
              currentAccountPicture:

              Lottie.asset('images/person.json' , width: 66, height: 66),

             // CircleAvatar(backgroundImage: AssetImage("images/natural.jpg"))
        //,

            ),

            ListTile(
              title: Text("home"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text("Fovourite"),
              leading: Icon(Icons.favorite),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text("News"),
              leading: Icon(Icons.newspaper),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          //  Spacer(),
            ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.login, color: Colors.red,),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}


class landscape extends StatelessWidget {
  const landscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
          Column(children: [  Row(
            children: [
              Column(children: [
                CustomeDrawer()
              ],),
              Column(children: [
                AssignmentOne()],),
            ],
          ),],)

        ),
      ),
    );
  }
}

class mainn extends StatelessWidget {
  const mainn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation o = MediaQuery.of(context).orientation;

    return Scaffold(
      drawer: Drawer(child: portscreen(),),
      body: o == Orientation.landscape ? landscreen() : portscreen() ,
    );
  }
}
