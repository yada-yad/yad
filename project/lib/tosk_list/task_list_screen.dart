import 'package:project/models/todo.dart';
import 'package:project/todo_list/bar.dart';
import 'package:project/todo_list/body.dart';
import 'package:project/tosk_list/bar.dart';
import 'package:project/tosk_list/float.dart';
import 'body.dart';
import 'package:project/tosk_list/body.dart';
import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  final Todo todo;

  TaskList(this.todo);
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  void removetask(int index) {
    setState(() {
      widget.todo.task.removeAt(index);
    });
  }

  void toggle(int index) {
    setState(() {
      widget.todo.task[index].completed = !widget.todo.task[index].completed;
    });
  }

  Function close(context) {
    return (bool save) {
      save ? Navigator.pop(context, widget.todo) : Navigator.pop(context, null);
    };
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: SafeArea(
          child: Scaffold(
            // appBar: ,
            body: Body1(widget.todo.task, removetask, toggle),
            floatingActionButton: Float(widget.todo),
          ),
        ));
  }
}
