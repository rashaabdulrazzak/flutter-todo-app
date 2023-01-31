import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey/modules/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modules/task_data.dart';

class TaskList extends StatelessWidget {

  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData, child){
        return ListView.builder(itemBuilder: (context,index) {
          final task = taskData.tasks[index];
          return TaskTile(
              longPressCallBack: (){
                taskData.deleteTask(task);
              },
              isChecked:task.isDone,
              taskTitle:task.name,
              checkboxCallBack:(checkboxState){
                taskData.updateTask(task);
              });
        },
          itemCount: taskData.taskCount,);

      },

    );
  }
}
