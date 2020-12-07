import 'package:flutter/material.dart';

class CreateStudentChatPage extends StatefulWidget{
  CreateStudentChatPage({Key key}) : super (key: key);

  @override
  _TeacherChatPage createState()=> _TeacherChatPage();

}

class _TeacherChatPage extends State<CreateStudentChatPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Page"),
      ),
    );
  }

}