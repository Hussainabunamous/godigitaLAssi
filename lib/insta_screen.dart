import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class instaScreen extends StatelessWidget {
  const instaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage("images/natural.jpg"),width: double.infinity, height: 300,fit: BoxFit.cover,),
              Container(
                margin: EdgeInsets.only(top: 16 , left: 16),
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.heart),
                    SizedBox(width: 16,),
                    Icon(FontAwesomeIcons.comment),
                    SizedBox(width: 16,),
                    ImageIcon(
                      AssetImage("images/send.png"),
                      color: Colors.black,
                      size: 24,
                    )


                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                  margin: EdgeInsets.only(left: 16),

                  child: Text("111,5  likes")),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
             //mainAxisAlignment: MainAxisAlignment.spaceBetween,


                  children: [
                     Expanded(
                       flex: 1,
                       child: Container(

                           child: CircleAvatar(backgroundImage: AssetImage("images/natural.jpg"))),
                     ),
                    SizedBox(width: 8,),
                    Expanded(
                      flex: 2,
                      child: Container(

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("hussain abunamous"),
                                SizedBox(width: 8,),
                                Text("18 h",style: TextStyle(color: Colors.grey),),


                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  child: Text("hgvj hfvjkhvh jhvjbcv bvcv,bvvcvb,cgvhbjbcmv,kj..hkvgdjgh",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Replay"),
                                SizedBox(width: 16,),
                                Text("See Translation",style: TextStyle(color: Colors.grey),),
                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Icon(FontAwesomeIcons.heart),
                            Text("3")
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),


              Text("hgvjhfvjkhvhjhvjbcvbvcvvbvmb bnm bnmvbj,vbnvvm,bvvcvb,cgvhbjbcmv,kj..hkvgdjgh",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),


              
            ],
          ),
        ),
      ),
    );
  }
}
