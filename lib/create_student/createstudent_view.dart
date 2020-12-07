import 'package:flutter/material.dart';

class CreateStudentViewPage extends StatefulWidget{
  CreateStudentViewPage({Key key}) : super (key: key);

  @override
  _TeacherChatPage createState()=> _TeacherChatPage();

}

class _TeacherChatPage extends State<CreateStudentViewPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Page"),
      ),
    );
  }

}