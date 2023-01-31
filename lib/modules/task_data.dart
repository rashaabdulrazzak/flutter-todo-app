import 'package:flutter/foundation.dart';
import 'package:todoey/modules/task.dart';
class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'buy eggs'),
    Task(name: 'buy fruits'),
    Task(name: 'buy chicken'),
  ];
  int get taskCount {
    return tasks.length;
  }
}