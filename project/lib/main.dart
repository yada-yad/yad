import 'package:flutter/material.dart';
import 'package:project/router.dart';
import 'package:project/todo_list/todo_list.dart';
import 'package:project/tosk_list/task_list_screen.dart';
import 'package:project/models/mock_todos.dart';
import 'package:project/router.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exercise 2",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Todolistscreen(mytodolist),
    );
  }
}
