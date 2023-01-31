import 'package:flutter/material.dart';
class AddTaskScreen extends StatelessWidget {
 // const AddTaskScreen({Key? key}) : super(key: key);
  final Function addTask ;
  AddTaskScreen({required this.addTask});
   String newTaskTitle = '' ;
  @override
  Widget build(BuildContext context) {
    return Container(
     color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Add a task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,

              ),),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText){
                  newTaskTitle = newText;
                },
              ),
              TextButton(onPressed: (){
                addTask(newTaskTitle);
              },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,

                ),
                child: Text('ADD',style: TextStyle(
                  color: Colors.white,
                ),))
            ],
          ),
        ),
      ),
    );
  }
}
