

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class portscreen extends StatelessWidget {
  const portscreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}