import 'package:flutter/material.dart';
import 'package:go_digital/social%20app/instadata.dart';

import 'insta_modle.dart';

class InstaItem extends StatefulWidget {
  Instas instas;
  Function fun;
   InstaItem(this.instas , this.fun);

  @override
  State<InstaItem> createState() => _InstaItemState();
}

class _InstaItemState extends State<InstaItem> {

  @override
  Widget build(BuildContext context) {

    //bool isfov = false;
    bool isfov = widget.instas.isFavorite ;
    bool _istap = false;
    Color _iconcolor = Colors.grey;

   // Color _iconColor = Colors.grey.shade300;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: 560.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 2),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image(
                            height: 50.0,
                            width: 50.0,
                            image: AssetImage(widget.instas.imgPersonalUrl ?? ""),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      widget.instas.name ??"",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("19 hr"),
                    trailing: IconButton(
                      icon: Icon(Icons.more_horiz),
                      color: Colors.black,
                      onPressed: () => print('More'),
                    ),
                  ),
                  InkWell(
                    onDoubleTap: () => print('Like post'),
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (_) => ViewPostScreen(
                      //       post: posts[index],
                      //     ),
                      //   ),
                      // );
                    },
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      width: double.infinity,
                      height: 400.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 5),
                            blurRadius: 8.0,
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage(widget.instas.imgUrl??''),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {
                                    widget.instas.isFavorite = !widget.instas.isFavorite;

                                    widget.fun();
                                  },
                                  icon: Icon(Icons.favorite, color: widget.instas.isFavorite == false ? Colors.grey : Colors.red),


                                ),
                                // GestureDetector(
                                //   onTap: () {
                                //     isfov = !isfov;
                                //     setState(() {});
                                //   },
                                //   child: Icon(
                                //     Icons.favorite,
                                //     size: 30,
                                //     color: isfov ? Colors.red : Colors.grey,
                                //   ),
                                // ),
                                Text(
                                  '2,515',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20.0),
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.chat),
                                  iconSize: 30.0,
                                  onPressed: () {
                                    // Navigator.push(
                                    //   context,
                                    // //   MaterialPageRoute(
                                    // //     // builder: (_) => ViewPostScreen(
                                    // //     //   post: posts[index],
                                    // //     ),
                                    // //   ),
                                    // // );
                                  },
                                ),
                                Text(
                                  '350',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(Icons.bookmark_border),
                          iconSize: 30.0,
                          onPressed: () => print('Save post'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
