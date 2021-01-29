import 'package:flutter/material.dart';
import 'package:flutter_daytwo_todolist/add_task_page.dart';
import 'package:flutter_daytwo_todolist/data/task_data.dart';
import 'package:flutter_daytwo_todolist/widgets/tasks_list.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TaskData _data;

  @override
  void initState() {
    super.initState();
    _data = TaskData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: TasksList(
          tasks: _data.tasks,
          onTap: () {
            setState(() {});
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var newTask = await showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskPage(),
          );

          if (newTask == null) {
            return;
          }

          newTask = newTask.toString().trim();
          if (newTask == '') {
            return;
          }

          setState(() {
            _data.addTask(newTask);
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
