import 'package:flutter/material.dart';
import 'package:ot/student/bottomnavigations.dart';


class StudentMain extends StatefulWidget{
  StudentMain({Key key}) : super (key: key);

  @override
  _MainStudent createState()=> _MainStudent();

}

class _MainStudent extends State<StudentMain> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: BottomStateS(),
    );
  }
}
