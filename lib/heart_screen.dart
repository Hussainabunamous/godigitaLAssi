import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';


class HeartScreen extends StatelessWidget {
  const HeartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(

          ),
          child: Center(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,

                    image: DecorationImage(
                      image: AssetImage('images/hearts.jpg'),
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.1), BlendMode.srcOver),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: double.infinity,
                  height: double.infinity,
                  child:               Lottie.asset(
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                      'images/heart.json'),

                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: double.infinity,
                    height: 500,
                    child:            Center(
                      child: Text("shada" ,

                        style: GoogleFonts.aclonica(
                          textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold , fontSize: 33),
                    ),),
                    )

                  ),
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}
