import 'package:flutter/material.dart';
import 'package:ot/create_student/bottomnavigationstudent.dart';
import 'package:ot/create_student/createstudent_saved.dart';
import 'package:ot/create_student/createstudent_view.dart';
import 'package:ot/create_student/createstudent_chat.dart';


class CreateStudentMain extends StatefulWidget{
  CreateStudentMain({Key key}) : super (key: key);

  @override
  _MainCreateStudent createState()=> _MainCreateStudent();

}

class _MainCreateStudent extends State<CreateStudentMain> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: BottomStateStudent(),
    );
  }
}