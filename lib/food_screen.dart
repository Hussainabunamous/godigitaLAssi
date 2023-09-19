import 'package:flutter/material.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "images/foodImg.jpg",
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25))),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                //mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  Text(
                    "بيتزا بالخضار",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "بيتزا بالخضار ميزة",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Row(
                          children: [
                            TextButton(onPressed: () {}, child: Text("+", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold,fontSize: 18),)),
                            Text("1"),
                            TextButton(onPressed: () {}, child: Text("-", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold,fontSize: 18),)),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text("data"),
                          SizedBox(
                            width: 4,
                          ),
                          Text("data"),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 5,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "(اختياري)",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "اختيارك من الحجم",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "اختر من القائمة",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  RadioListTile(
                    secondary: Text("صنف كبير"),
                    value: false,
                    groupValue: "f",
                    onChanged: (value) {},
                  ),
                  RadioListTile(
                    secondary:Text("صنف متوسط") ,
                    value: false,
                    groupValue: "f",
                    onChanged: (value) {},
                  ),
                  RadioListTile(
                    secondary:  Text("صنف صغير"),
                    value: true,
                    groupValue: "f",
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 5,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "(اختياري)",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "اختيارك من الاضافات",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "اختر من القائمة",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Column(
                      children: [
                        CheckboxListTile(
                          title: Text("صنف 1"),
                          value: true,
                          onChanged: (value) {},
                        ),
                        CheckboxListTile(
                          title: Text("صنف 2"),
                          value: false,
                          onChanged: (value) {},
                        ),
                        CheckboxListTile(
                          title: Text("صنف 3"),
                          value: false,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
height: 100,

        decoration: BoxDecoration(
            color: Colors.grey,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
        ),
        child: Center(
          child: Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
            margin: EdgeInsets.all(32),

            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("د.ا"),
                    Text("22.00"),
                  ],
                ),
                Text("اضافة للسلة")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
