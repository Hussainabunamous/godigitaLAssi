import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'all_images.dart';

class AssignmentOne extends StatefulWidget {
  const AssignmentOne({Key? key}) : super(key: key);

  @override
  State<AssignmentOne> createState() => _AssignmentOneState();
}

class _AssignmentOneState extends State<AssignmentOne> {
  @override
  Widget build(BuildContext context) {
    bool like = false;


        like = !like;


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
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 300.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25)),
                      image: DecorationImage(
                        image: AssetImage('images/natural.jpg'),
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.1), BlendMode.srcOver),
                        fit: BoxFit.fill,
                      ),
                      color: Colors.blue,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.green,
                      ),
                      child: InkWell(
                      //  onTap:()=>islike() ,
                        child: Center(
                          child: Icon(
                            FontAwesomeIcons.heart,
                            color: like ? Colors.red : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  CustomAppbar(),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nusa Penida",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Colors.black),
                        textAlign: TextAlign.justify,
                        maxLines: 7),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      "Picture",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                        });
                      },
                      child: Icon(
                        Icons.favorite,
                        color: like ? Colors.red : Colors.grey,
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Container(
                    //       //margin: EdgeInsets.only(right: 4),
                    //       width: 65,
                    //       height: 65.0,
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.only(topRight: Radius.circular(8), topLeft: Radius.circular(8)
                    //         ,bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8)),
                    //
                    //
                    //         image: DecorationImage(
                    //           image: AssetImage('images/natural.jpg'),
                    //           colorFilter: ColorFilter.mode(
                    //               Colors.black.withOpacity(0.1), BlendMode.srcOver),
                    //           fit: BoxFit.fill,
                    //         ),
                    //         color: Colors.blue,
                    //       ),
                    //
                    //     ),
                    //     Container(
                    //       //margin: EdgeInsets.only(right: 4),
                    //       width: 65,
                    //       height: 65.0,
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.only(topRight: Radius.circular(8), topLeft: Radius.circular(8)
                    //             ,bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8)),
                    //
                    //
                    //         image: DecorationImage(
                    //           image: AssetImage('images/natural.jpg'),
                    //           colorFilter: ColorFilter.mode(
                    //               Colors.black.withOpacity(0.1), BlendMode.srcOver),
                    //           fit: BoxFit.fill,
                    //         ),
                    //         color: Colors.blue,
                    //       ),
                    //
                    //     ),
                    //     Container(
                    //       //margin: EdgeInsets.only(right: 4),
                    //       width: 65,
                    //       height: 65.0,
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.only(topRight: Radius.circular(8), topLeft: Radius.circular(8)
                    //             ,bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8)),
                    //
                    //
                    //         image: DecorationImage(
                    //           image: AssetImage('images/natural.jpg'),
                    //           colorFilter: ColorFilter.mode(
                    //               Colors.black.withOpacity(0.1), BlendMode.srcOver),
                    //           fit: BoxFit.fill,
                    //         ),
                    //         color: Colors.blue,
                    //       ),
                    //
                    //     ),
                    //     Container(
                    //       //margin: EdgeInsets.only(right: 4),
                    //       width: 65,
                    //       height: 65.0,
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.only(topRight: Radius.circular(8), topLeft: Radius.circular(8)
                    //             ,bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8)),
                    //
                    //
                    //         image: DecorationImage(
                    //           image: AssetImage('images/natural.jpg'),
                    //           colorFilter: ColorFilter.mode(
                    //               Colors.black.withOpacity(0.1), BlendMode.srcOver),
                    //           fit: BoxFit.fill,
                    //         ),
                    //         color: Colors.blue,
                    //       ),
                    //
                    //     ),
                    //     Container(
                    //       //margin: EdgeInsets.only(right: 4),
                    //       width: 65,
                    //       height: 65.0,
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.only(topRight: Radius.circular(8), topLeft: Radius.circular(8)
                    //             ,bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8)),
                    //
                    //
                    //
                    //         color: Colors.blueGrey,
                    //       ),
                    //       child: Center(child: Text("+20", style: TextStyle(fontSize: 16 ,fontWeight: FontWeight.bold, color: Colors.white),)),
                    //
                    //     ),
                    //
                    //
                    //
                    //
                    //
                    //   ],
                    // ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height / 11.65,
                      child: Row(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(right: 8),
                                width: 65,
                                height: 65.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8),
                                      topLeft: Radius.circular(8),
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8)),
                                  image: DecorationImage(
                                    image: AssetImage(image[index]),
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.1),
                                        BlendMode.srcOver),
                                    fit: BoxFit.fill,
                                  ),
                                  color: Colors.blue,
                                ),
                              );
                            },
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => AllImages()));
                            },
                            child: Container(
                              //margin: EdgeInsets.only(right: 4),
                              width: 65,
                              height: 65.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8)),
                                color: Colors.blueGrey,
                              ),
                              child: Center(
                                  child: Text(
                                "+${image.length}",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Row(
                      children: [
                        Text(
                          "More in Bali",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.green),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.green,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
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
