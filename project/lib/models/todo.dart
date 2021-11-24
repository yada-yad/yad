import 'package:project/models/task.dart';

class Todo {
  String title;

  List<Task> task;
  int get percent {
    int done = 0;
    for (int i = 0; i < task.length; i++) {
      if (task[i].completed == true) {
        done++;
      }
    }
    return ((done / task.length) * 100).toInt();
  }

  Todo(this.title, this.task);
  Todo.copy(Todo from)
      : this((from.title), from.task.map((task) => Task.copy(task)).toList());

  update(Todo to) {
    this.title = to.title;
    this.task = to.task;
  }
}
