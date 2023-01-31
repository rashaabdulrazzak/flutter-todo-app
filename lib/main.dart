import 'package:flutter/material.dart';
import 'package:todoey/modules/task_data.dart';
import 'screens/task_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>TaskData(),
      child:  MaterialApp(
        title: 'To Do App',
        home:  TaskScreen(),
      ),
    );
  }
}


