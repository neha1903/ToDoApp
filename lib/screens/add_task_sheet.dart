import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/tasks_list.dart';

class AddTaskSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTask = "";
    return SingleChildScrollView(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        child: Container(
          color: Color(0xff757575),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30.0,
                    color: Colors.lightBlueAccent.shade100,
                  ),
                ),
                TextField(
                  autofocus: true,
                  onChanged: (value) {
                    newTask = value;
                  },
                  decoration: InputDecoration(
                    hintText: "type here... ",
                    contentPadding: EdgeInsets.all(5.0),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (newTask.length > 0) {
                      Provider.of<TaskList>(context, listen: false)
                          .insertTask(newTask);
                      Navigator.pop(context);
                    }
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlueAccent.shade100,
                    padding: EdgeInsets.all(15.0),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
