import 'package:flutter/material.dart';
import 'package:project/models/todo.dart';
import 'package:project/tosk_list/bar.dart';
import 'package:project/tosk_list/body.dart';
import 'package:project/todo_list/bar.dart';
import 'body.dart';

class Todolistscreen extends StatelessWidget {
  List<Todo> todos;
  Todolistscreen(this.todos);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: SafeArea(
          child: Scaffold(
            // appBar: Bar(),
            body: Body(),
          ),
        ));
  }
}
