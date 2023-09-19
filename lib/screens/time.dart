import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';


class Timerr extends StatefulWidget {




  @override
  State<Timerr> createState() => _TimerrState();





}

class _TimerrState extends State<Timerr> {
  double v = 0;
  int c = 0 ;
  @override
  initState() {
//c++;
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [




              TextButton(onPressed: (){
                setState(() {
                  v =  v+900 / 9000;

                  if(v == 0.9){
                    v=0;
                  }

                  c++;

                //   v = v / 100;

                  print(v);
                });
              }, child: Text("press")),

              SizedBox(height: 32,),


              CircularPercentIndicator(
                radius: 88.0,
                lineWidth: 15.0,
                percent: v,



                circularStrokeCap: CircularStrokeCap.round,
                center: new Text(v.toString()),
                progressColor: Colors.green,
              ),
              SizedBox(height: 32,),
              Text(c.toString())
            ],
          ),
        ),
      ),

    );
  }
}
