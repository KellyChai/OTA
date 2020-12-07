import 'package:flutter/material.dart';

class StudentAccountPage extends StatefulWidget{
  StudentAccountPage({Key key}) : super (key: key);

  @override
  _TeacherChatPage createState()=> _TeacherChatPage();

}

class _TeacherChatPage extends State<StudentAccountPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Page"),
      ),
    );
  }

}