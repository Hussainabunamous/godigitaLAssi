import 'dart:ffi';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);

  List<Map<String, dynamic>> data = [
    {
      "image_url": "images/one.png",
      "name": "hussain",
      "content": [
        {"name": "gf", "price": "20"},
        {"name": "gf", "price": "20"},
        {"name": "gfdh", "price": "31"},
      ]
    },
  ];

 // Meal m = Meal.from(data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First screen"),
        centerTitle: true,
        backgroundColor: Colors.pink.shade50,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MealItem(img_url: "images/one.png",name: "Black Eye", stars: "4.0"),
              MealItem(img_url: "images/one.png",name: "Black Eye", stars: "4.0"),
              MealItem(img_url: "images/one.png",name: "Black Eye", stars: "4.0"),
            ],
          ),
        ),



        // Container(
        //   height: 316,
        //   margin: EdgeInsets.all(16),
        //   decoration: BoxDecoration(
        //     border: Border.all(color: Colors.black),
        //     borderRadius: BorderRadius.all(Radius.circular(15))
        //
        //   ),
        //   child: SingleChildScrollView(
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //
        //         ClipRRect(child: Image.asset("images/one.png" , height: 200,width: double.infinity,fit:  BoxFit.fill,)),
        //         Container(
        //           margin: EdgeInsets.only(top: 22 , left: 16),
        //           child: Column(
        //             children: [
        //               Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //
        //                 children: [
        //                   Text(
        //                     "hi world",
        //                     style: TextStyle(fontSize: 16),
        //                   ),
        //                   Text(
        //                     "hi world",
        //                     style: TextStyle(fontSize: 16),
        //                   ),
        //                 ],
        //               ),
        //
        //               Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //
        //                 children: [
        //                   Text(
        //                     "hi world",
        //                     style: TextStyle(fontSize: 16),
        //                   ),
        //                   Text(
        //                     "hi world",
        //                     style: TextStyle(fontSize: 16),
        //                   ),
        //                 ],
        //               ),
        //
        //               Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //
        //                 children: [
        //                   Text(
        //                     "hi world",
        //                     style: TextStyle(fontSize: 16),
        //                   ),
        //                   Text(
        //                     "hi world",
        //                     style: TextStyle(fontSize: 16),
        //                   ),
        //                 ],
        //               ),
        //             ],
        //           ),
        //         ),
        //
        //         SizedBox(height: 16,),
        //
        //
        //
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}

class MealItem extends StatelessWidget {

  final String img_url;
  final String stars;
  final String name;
  const MealItem({
    super.key, required this.img_url, required this.stars, required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => Details(index),
        //     ));
      },
      child: Card(
        elevation: 5,
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.only(right: 20 , left: 20 , top: 20),
        child: Container(
          //padding: const EdgeInsets.all(15),
          width: double.infinity,
          height: 310,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                child: SizedBox(
                  height: 120,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned.fill(
                          child: Image(
                            image: AssetImage(img_url),
                            fit: BoxFit.cover,
                          )),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 25,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.black
                                .withOpacity(.7),
                            borderRadius:
                            const BorderRadius.only(
                                bottomLeft:
                                Radius.circular(
                                    10)),
                          ),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment
                                .spaceEvenly,
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 14,
                              ),
                              Text(
                                stars,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight:
                                    FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  padding: const EdgeInsets.all(15),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Text("Content",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        )),
                    const SizedBox(
                      height: 10,
                    ),


                        Container(
                          height: 70,
                          child: ListView.builder(itemCount: 5,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return item_content(name_content: "dfghj" , price_content: "7.25");
                              }),
                        )



                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}

class item_content extends StatelessWidget {

  final String name_content;
  final String price_content;
  const item_content({
    super.key, required this.name_content, required this.price_content,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text("name",
            style: const TextStyle(
              color: Colors.black45,
              fontSize: 20,
            )),
        Row(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text("\$ ",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ),
            Text(price_content,
                style: const TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                )),
          ],
        ),

      ],
    );
  }
}

class Meal_item {
  String? imageUrl;
  String? name;
  String? price;

  Meal_item.from(Map<String, dynamic> map) {
    String image = map["image"];
    String name = map["name"];
    String price = map["price"];
  }
}

class content {
  String? name;
  String? price;

  content.from(Map map) {
     String image = map["image"];
    String name = map["name"];
    String price = map["price"];
  }
}



