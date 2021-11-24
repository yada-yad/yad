import 'package:flutter/material.dart';

class Bar1 extends StatefulWidget {
  const Bar1({Key? key}) : super(key: key);
  Size get PreferredSizeWidget => Size.fromHeight(60.0);

  @override
  _Bar1State createState() => _Bar1State();
}

class _Bar1State extends State<Bar1> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(),
      title: Text("task list todo"),
      centerTitle: true,
    );
  }
}
