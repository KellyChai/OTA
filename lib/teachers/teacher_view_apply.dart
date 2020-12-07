import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ot/student/select_schedule.dart';
import 'package:ot/student/student_chat.dart';


class TeacherView extends StatefulWidget {

  @override
  _TeacherViewState createState()=>_TeacherViewState();


}

class _TeacherViewState extends State<TeacherView> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("View Page"),
      ),
        body: SafeArea(
          child: Container(
          constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage('Images/OTA.png'),
            fit: BoxFit.cover,
            )
            ),


                child: Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  height: 80,
                  width: 300,
                  color: Colors.brown[200].withOpacity(0.5),



                  child: Column(
                    children: [
                      Row(
                        children: <Widget>[

                          new Expanded(
                            child: Container(
                              width: 5,
                              height: 130,
                              color:Colors.brown[300],
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('Images/profile1.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            ),
                          new Expanded(
                            child: Container(
                            width: 10,
                            height: 130,
                            color:Colors.brown[300],
                              child: Center(
                                  child: Text("Jeremy",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                              ),
                          ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                            Icons.location_on_outlined,
                            size: 30.0,
                          ),
                          ),
                          new Expanded(
                          child:Container(
                              width: 300,
                              height: 80,
                              color:Colors.brown[300],
                              child: Center(
                                child: Text(
                                    'No.11, Jalan SE1B, Taman Equine, Sunway Eastwood, 43300 Seri Kembangan, Selangor.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.cast_for_education_rounded,
                              size: 30.0,
                            ),
                          ),
                          new Expanded(
                            child: Container(
                              width: 10,
                              height: 30,
                              color:Colors.brown[300],
                              child: Center(
                                child: Text(
                                  'Harvard University',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 17
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                            Icons.attach_money_rounded,
                            size: 30.0,
                          ),
                          ),
                          new Expanded(
                            child: Container(
                              width: 10,
                              height: 30,
                              color:Colors.brown[300],
                              child: Center(
                                child: Text(
                                  'RM1000.00 Per Month',
                                  style: TextStyle(
                                      fontSize: 17
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.book,
                              size: 30.0,
                            ),
                          ),
                          new Expanded(
                            child: Container(
                              width: 10,
                              height: 30,
                              color:Colors.brown[300],
                              child: Center(
                                child: Text(
                                  'Major in Accounting',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 17
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),

                             Divider(
                               height: 20,
                               color: Colors.brown[300],
                             ),

                             RaisedButton(
                                 color: Colors.deepOrange[100],
                                 child: Text('Apply',
                                     style: TextStyle(
                                         fontSize: 20,
                                         fontWeight: FontWeight.bold,
                                         color: Colors.white)),
                                 onPressed: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Schedule(),),);
                                 }
                             ),

                           ],
                         ),

                     ),
                  ),
                ),
              );


  }

}
