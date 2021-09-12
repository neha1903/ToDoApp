import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/model/task.dart';

class TaskList extends ChangeNotifier {
  List<Task> _taskList = [
    Task(name: "buy Milk", isDone: false),
    Task(name: "buy Vegetables", isDone: false),
    Task(name: "buy Apple", isDone: false),
    Task(name: "buy Chocolates", isDone: false),
    Task(name: "buy Toffees", isDone: false),
  ];

  UnmodifiableListView<Task> get taskList {
    return UnmodifiableListView(_taskList);
  }

  void toggleCheckboxes(Task task) {
    task.toggleIsDone();
    notifyListeners();
  }

  int get taskCount {
    return _taskList.length;
  }

  void insertTask(String newTask) {
    Task task = Task(name: newTask, isDone: false);
    _taskList.add(task);
    notifyListeners();
  }

  void deleteTasks() {
    _taskList.clear();
    notifyListeners();
  }

  void deleteSingleTask(Task task) {
    _taskList.remove(task);
    notifyListeners();
  }
}
