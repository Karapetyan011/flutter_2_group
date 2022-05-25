///Created by HrAnT

import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter_test_group_2/to_do/models/task.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TaskProvider extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'My To Do Example'),
  ];

  final _getSharedInst =  SharedPreferences.getInstance();

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle, int index)async {
    var storage = await _getSharedInst;
    storage.setString("$index", newTaskTitle);
    // final task = Task(name: newTaskTitle);
    // _tasks.add(task);
    notifyListeners();
  }

  dynamic getTask(int index) async{
    var storage = await _getSharedInst;
    if(storage.containsKey("$index")) {
      var text = storage.get("$index");
      return text;
    }

  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
