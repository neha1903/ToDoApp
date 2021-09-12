import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/model/task.dart';
import 'package:todoey_flutter/tasks_list.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskList>(builder: (context, task, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          Task taskOb = task.taskList[index];
          return TaskTile(
            text: taskOb.name,
            checkboxState: taskOb.isDone,
            checkboxCallback: (value) {
              task.toggleCheckboxes(taskOb);
            },
            onLongPressCallback: () {
              task.deleteSingleTask(taskOb);
            },
          );
        },
        itemCount: task.taskCount,
      );
    });
  }
}
