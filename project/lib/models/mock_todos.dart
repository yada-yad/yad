import 'todo.dart';
import 'package:project/models/task.dart';

List<Todo> mytodolist = [
  Todo("Map Project", [
    Task("Delivarable #1 Proposal and design", true),
    Task("Delivarable #2 Prototype 1", false),
    Task("Delivarable #3 Prototype 2", false),
    Task("Delivarable #4 Backend", false),
    Task("Delivarable #5 Realse Version", false)
  ]),
  Todo("preparing For Online learning ", [
    Task("Delivarable #1 Reading Slides ", true),
    Task("Delivarable #2 Taking Notice", false),
    Task("Delivarable #3 Searching for resource", false),
    Task("Delivarable #4 Reveiwing Past Quation", false),
  ]),
  Todo("Things to do this week ", [
    Task("Delivarable #1 preparing for midterm", true),
    Task("Delivarable #2 studey hard ", false),
    Task("Delivarable #3 finshing the task", false),
  ]),
];
