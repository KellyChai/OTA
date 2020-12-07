
import 'package:flutter/material.dart';
import 'package:ot/student/student_view.dart';
import 'package:ot/teacher/bottomnavigation.dart';

class StudentorTeacher extends StatefulWidget {
  @override
  _RegisteredState createState() => _RegisteredState();
}
class _RegisteredState extends State<StudentorTeacher> {

  @override
  Widget build(BuildContext context) {

    final _height=MediaQuery.of(context).size.height;
    final _width=MediaQuery.of(context).size.width;

   return new Container(
     color: Colors.brown,
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Text("Verification",
         style: TextStyle(
         fontSize: 20,
         fontWeight: FontWeight.bold,
         color: Colors.white)),
         SizedBox(height:50),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: RaisedButton(
               color: Colors.deepOrange[100],
               child: Text('Student',
                   style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.bold,
                       color: Colors.white)),
               onPressed: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                   builder: (context) => StudentView()
                   ),
                 );
               }
           ),
         ),
         SizedBox(height: _height * 0.05),
         Text('OR',
             style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
                 color: Colors.white)),
         SizedBox(height: _height * 0.10),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: RaisedButton(
               color: Colors.deepOrange[100],
               child: Text('Teacher',
                   style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.bold,
                       color: Colors.white)),
               onPressed: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                       builder: (context) => BottomStateT()
                   ),
                 );}
           ),
         ),
       ],
     ),
   );
  }

}