import 'package:flutter/material.dart';

import 'package:ot/create_teacher/bottomnavigationteacher.dart';


class CreateTeacherMain extends StatefulWidget{
  CreateTeacherMain({Key key}) : super (key: key);

  @override
  _MainCreateStudent createState()=> _MainCreateStudent();

}

class _MainCreateStudent extends State<CreateTeacherMain> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: BottomStateTeacher(),
    );
  }
}