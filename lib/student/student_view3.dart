import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:ot/student/student_chat.dart';
import 'package:ot/student/student_view2.dart';
import 'package:ot/student/student_view4.dart';
import 'package:ot/teacher/teacher_view3_apply.dart';



class StudentView3 extends StatefulWidget {

  @override
  _StudentViewState createState()=>_StudentViewState();


}

class _StudentViewState extends State<StudentView3> with TickerProviderStateMixin {



  @override
  Widget build(BuildContext context) {
    CardController controller;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F3F0),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: const Color(0xFF374c65),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentView2(),),);
          },
        ),
        actions: <Widget>[

        ],
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Images/OTA.png'),
              fit: BoxFit.cover,
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            new Container(
              constraints: BoxConstraints.expand(height:120,width: 250),
              decoration: BoxDecoration(
                color: const Color(0xFF374c65),
                borderRadius: BorderRadius.circular(20.0),
              ) ,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text("James",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16,),
                    Text("Major in Science Subjects",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                      ),
                    ),
                    Text("Physics, Chemistry, Biology",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height:20),
            new Container(
              constraints: BoxConstraints.expand(height:300,width: 300),
              decoration: BoxDecoration(
                color: const Color(0xFFFBE9bd),
                borderRadius: BorderRadius.circular(20.0),
              ) ,
              height:100,
              width: 500,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image:DecorationImage(
                        image: AssetImage('Images/profile3.jpg')),
                  ) ,
                ),
              ),
            ),

            Wrap(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                      color:const Color(0xFFFBE9bd),
                      child: Text('Reject',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color:const Color(0xFF374c65))),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentView4(),),);
                      }
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                      color: const Color(0xFFFBE9bd),
                      child: Text('View',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF374c65))),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>TeacherView3(),),);
                      }
                  ),
                ),
              ],
            ),
          ],
        ) ,
      ),



    );
  }

}