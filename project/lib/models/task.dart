class Task {
  String title;
  bool completed;

  Task(this.title, this.completed);
  Task.copy(Task from) : this((from.title), (from.completed));
}
