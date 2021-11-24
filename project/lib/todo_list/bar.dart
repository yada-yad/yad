import "package:flutter/material.dart";

class Bar extends StatefulWidget {
  const Bar({Key? key}) : super(key: key);
  Size get PreferredSizeWidget => Size.fromHeight(60.0);

  @override
  _BarState createState() => _BarState();
}

class _BarState extends State<Bar> {
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(),
      title: Text("todo list  Task"),
      centerTitle: true,
    );
  }
}
