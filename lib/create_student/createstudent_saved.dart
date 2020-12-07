import 'package:flutter/material.dart';

class CreateStudentSavedPage extends StatefulWidget{
  CreateStudentSavedPage({Key key}) : super (key: key);

  @override
  _TeacherChatPage createState()=> _TeacherChatPage();

}

class _TeacherChatPage extends State<CreateStudentSavedPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saved Page"),
      ),
    );
  }

}