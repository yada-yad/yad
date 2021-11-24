import 'package:flutter/material.dart';
import 'package:project/models/todo.dart';
import 'package:project/models/task.dart';
import 'package:project/models/mock_todos.dart';
import 'package:project/tosk_list/task_list_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<Todo> todos = mytodolist;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: todos.length,
        separatorBuilder: (context, index) => Divider(
              color: Colors.blueGrey,
            ),
        itemBuilder: (context, index) => ListTile(
            title: Text(todos[index].title),
            subtitle: Text('this list ${todos[index].task.length}task'),
            trailing: CircleAvatar(
              child: Text(todos[index].percent.toString()),
            ),
            onTap: () async {
              final newtodo = await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TaskList(Todo.copy(todos[index]))));
              // arguments: {'index': index, 'todo': Todo.copy(todos[index]));
              if (newtodo != null) {
                setState(() {
                  todos[index].update(newtodo);
                });
              }

              if (newtodo == null) {
                setState(() {});
              }
            }));
  }
}
