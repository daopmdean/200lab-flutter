import 'package:flutter/material.dart';
import 'package:flutter_daytwo_todolist/models/task.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;

  const TasksList({Key key, this.tasks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return Container(
          height: 50,
          child: Center(
            child: Text(
              '${tasks[index].taskContent}',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
        );
      },
    );
  }
}
