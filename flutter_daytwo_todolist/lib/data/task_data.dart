import 'package:flutter_daytwo_todolist/models/task.dart';

class TaskData {
  List<Task> tasks = [
    Task(taskContent: "Listen to music"),
    Task(taskContent: "Read book"),
    Task(taskContent: "Take a walk"),
    Task(taskContent: "Watch movie"),
  ];

  String getText(index) {
    return tasks[index].taskContent;
  }

  void addTask(String task) {
    tasks.add(
      Task(taskContent: task),
    );
  }

  void checkTheTask(index) {
    tasks[index].check();
  }
}
