import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_digital/to_do_app/incomplete.dart';
import 'package:go_digital/to_do_app/task_model.dart';
import 'package:go_digital/to_do_app/to_do_data.dart';

import 'all.dart';
import 'maim_page.dart';

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController title = TextEditingController();
  TextEditingController subtitle = TextEditingController();
  updateUi() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    @override
    void dispose() {
      // Clean up the controller when the widget is disposed.
      title.dispose();
      subtitle.dispose();
      super.dispose();
    }
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            TextButton.icon(
                onPressed: () {
                  showModalBottomSheet(context: context, builder: (context) {
                    return Container(
                      margin: EdgeInsets.only(top: 16),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(

                            width: 60,
                            height: 5,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(5))

                            ),
                          ),
                          SizedBox(height: 32,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              children: [
                                TextField(

                                  decoration: InputDecoration(

                                    labelText: "title",
                                    hintText: "enter your title",
                                    border: OutlineInputBorder()

                                  ),
                                   controller: title,
                                ),
                                SizedBox(height: 16,),
                                TextField(
                                  decoration: InputDecoration(
                                      labelText: "Subtitle",
                                      hintText: "enter your detail of title",
                                      border: OutlineInputBorder()

                                  ),
                                  controller: subtitle,
                                ),
                                SizedBox(height: 32,),
                                MaterialButton(onPressed: (){
                                  String n = title.text;
                                  String s = subtitle.text;

                                  taks.add(Task(n, s, false));
                                  title.clear();
                                  subtitle.clear();
                                  setState(() {

                                  });
                                } , child: Text("Add Note", style: TextStyle(color: Colors.white),),color: Colors.blue,)
                              ],
                            ),
                          ),
                        //  TextField(),
                        ],
                      ),
                    );
                  },);
                }, icon: Icon(Icons.add), label: Text("added note"),
               
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))
                ),
              ),
            )
          ],
          bottom: TabBar(
            onTap: (index) {
              // Tab index when user select it, it start from zero
            },
            tabs: [
              Tab(text: "all task", icon: Icon(Icons.task)),
              Tab(text: "complete", icon: Icon(Icons.task_alt)),
              Tab(text: "incomplete", icon: Icon(FontAwesomeIcons.trash)),
            ],
          ),
          title: Text('To Do App'),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            AllTask(updateUi),
            MainTask(updateUi),
            incompleteTask(updateUi),
          ],
        ),
      ),
    );
  }
}
