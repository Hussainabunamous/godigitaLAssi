import 'package:flutter/material.dart';
import 'package:go_digital/to_do_app/task_model.dart';

class TaskWidget extends StatefulWidget {
  Task task;
  Function fun;

  TaskWidget(this.task, this.fun);

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    bool check = widget.task.isComplete;

    return Card(
      color: check == false ? Colors.blue : Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
        //set border radius more than 50% of height and width to make circle
      ),
      child: Container(
        decoration: BoxDecoration(
            color: check == false ? Colors.red : Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(25))),

        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                    value: check,
                    activeColor: Colors.white,

                    checkColor: Colors.blue,
                    onChanged: (x) {
                      widget.task.isComplete = x!;
                      widget.fun();
                    }),
                Text(
                  widget.task.title ?? "",
                  style: TextStyle(
                      decoration: check == false
                          ? TextDecoration.lineThrough
                          : TextDecoration.none),
                )
              ],
            ),
            SizedBox(height: 16,),
            Container(
              margin: EdgeInsets.only(bottom: 8, left: 16, right: 16),
              width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(widget.task.subTitle ?? "", style: TextStyle(color: Colors.black , fontSize: 22),maxLines: 7,),
                ))
          ],
        ),
      ),
    );
  }
}
