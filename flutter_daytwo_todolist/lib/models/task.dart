class Task {
  String taskContent;
  bool isDone = false;

  Task({this.taskContent});

  void check() {
    isDone = !isDone;
  }
}
