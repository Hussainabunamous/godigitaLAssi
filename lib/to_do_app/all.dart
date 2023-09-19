import 'package:flutter/material.dart';
import 'package:go_digital/to_do_app/task_model.dart';
import 'package:go_digital/to_do_app/to_do_data.dart';
import 'package:go_digital/to_do_app/to_do_widget.dart';


class AllTask extends StatelessWidget {


  Function fun;
  AllTask(this.fun);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: taks.length,
        itemBuilder: (context, index) {
          return TaskWidget(taks[index] , fun);
        },),
    );
  }
}
