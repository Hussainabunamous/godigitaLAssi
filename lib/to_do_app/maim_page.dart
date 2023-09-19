import 'package:flutter/material.dart';
import 'package:go_digital/to_do_app/task_model.dart';
import 'package:go_digital/to_do_app/to_do_data.dart';
import 'package:go_digital/to_do_app/to_do_widget.dart';


class MainTask extends StatelessWidget {
  Function fun;
  MainTask(this.fun);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: taks.where((element) => element.isComplete == true).length,
          itemBuilder: (context, index) {
            return TaskWidget(taks.where((element) => element.isComplete == true).toList()[index] , fun );
          },),
    );
  }
}
