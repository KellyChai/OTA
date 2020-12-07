import 'package:flutter/material.dart';

class TeacherSavedPage extends StatefulWidget{
  TeacherSavedPage({Key key}): super(key: key);

  @override
  _TeacherSavedPage createState() => _TeacherSavedPage();
}

class _TeacherSavedPage extends State<TeacherSavedPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saved Page"),
      ),
    );
  }

}
