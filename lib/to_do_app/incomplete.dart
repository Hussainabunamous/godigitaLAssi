import 'package:flutter/material.dart';
import 'package:go_digital/to_do_app/task_model.dart';
import 'package:go_digital/to_do_app/to_do_data.dart';
import 'package:go_digital/to_do_app/to_do_widget.dart';


class incompleteTask extends StatelessWidget {


  Function fun;
   incompleteTask(this.fun);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: taks.where((element) => element.isComplete == false).length,
        itemBuilder: (context, index) {
          return TaskWidget(taks.where((element) => element.isComplete == false).toList()[index] , fun);
        },),
    );
  }
}
