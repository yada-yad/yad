import 'package:flutter/material.dart';
import 'package:project/models/task.dart';

class Body1 extends StatelessWidget {
  final List<Task> task;
  final Function _removetask;
  final Function _toogle;
  Body1(this.task, this._removetask, this._toogle);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: task.length,
      separatorBuilder: (context, index) => Divider(
        color: Colors.blueGrey,
      ),
      itemBuilder: (context, index) => ListTile(
        title: Text(
          'Task Title',
          style: task[index].completed
              ? TextStyle(decoration: TextDecoration.lineThrough)
              : null,
        ),
        onTap: () => _toogle(index),
        onLongPress: () {
          _removetask(index);
        },
      ),
    );
  }
}
