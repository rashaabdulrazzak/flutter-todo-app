import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/modules/task.dart';
class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'buy eggs'),
    Task(name: 'buy fruits'),
    Task(name: 'buy chicken'),
  ];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }
  int get taskCount {
    return _tasks.length;
  }
  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
}