import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey/modules/task.dart';
class TaskList extends StatefulWidget {
  const TaskList({required this.tasks});
  final List<Task> tasks;
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index) {
      return TaskTile(isChecked: widget.tasks[index].isDone, taskTitle: widget.tasks[index].name, checkboxCallBack:(checkboxState){
        setState(() {
          widget.tasks[index].toggleDone();
        });
      });
    },itemCount: widget.tasks.length,);
  }
}
