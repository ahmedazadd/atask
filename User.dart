

import 'package:atask/Tasks/Task.dart';
import 'package:atask/Tasks/Occurrence.dart';
import 'package:atask/Tasks/Tasks.dart';

class User {
  List<Task> tasks = [];

  void createTask(String taskName, List<int> daysPerWeek, List<DateTime> time, bool repeats) {
    if (this.getTaskByName(taskName) == null) {
      this.tasks.add(new Task(taskName));
    }
    Task theTask = this.getTaskByName(taskName);
    theTask.addTimeOfTask(daysPerWeek, time, repeats);
  }

  Task getTaskByName(String taskName) {
    for (Task task in this.tasks) {
      if (task.name == taskName) {
        return task;
      }
    }
    return null;
  }
}