import 'package:flutter/material.dart';
import 'package:flutter_daytwo_todolist/models/task.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final Function onTap;

  const TasksList({Key key, this.tasks, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            tasks[index].check();
            onTap();
          },
          child: Container(
            height: 50,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.lightBlueAccent,
                width: 8,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                '${tasks[index].taskContent}',
                style: TextStyle(
                  fontSize: 24,
                  decoration: (tasks[index].isDone)
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
