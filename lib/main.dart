import 'package:flutter/material.dart';
import 'package:ot/create_student/bottomnavigationstudent.dart';
import 'package:ot/create_student/createstudent.dart';
import 'package:ot/create_student/createstudentprofile.dart';
import 'package:ot/create_student/maincreatestudent.dart';
import 'package:ot/create_teacher/bottomnavigationteacher.dart';
import 'package:ot/create_teacher/createteacherprofile.dart';
import 'package:ot/student/mainstudent.dart';
import 'package:ot/student/select_schedule.dart';
import 'package:ot/student/student_chat.dart';
import 'package:ot/student/student_view.dart';
import 'package:ot/student/student_view2.dart';
import 'package:ot/student/student_view3.dart';
import 'package:ot/teacher/bottomnavigation.dart';
import 'package:ot/teacher/teacher_chat.dart';
import 'package:ot/teacher/teacher_view_apply.dart';
import 'package:ot/teacher/teacher_view2_apply.dart';
import 'package:ot/teacher/teacher_view3_apply.dart';
import 'package:ot/teacher/teacher_view4Apply.dart';
import 'package:ot/teacher/teacher_view5_apply.dart';
import 'package:ot/views/sign_up_view.dart';
import 'create_teacher/createteacher_account.dart';
import 'splash_screen.dart';
void main() =>
    runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(//remember put back splash screen
      home:SplashScreen(),
    );
  }
}
