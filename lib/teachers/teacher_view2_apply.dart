import 'package:flutter/material.dart';
import 'package:ot/student/select_schedule.dart';
import 'package:ot/student/student_view.dart';


class TeacherView2 extends StatefulWidget {

  @override
  _TeacherViewState createState()=>_TeacherViewState();


}

class _TeacherViewState extends State<TeacherView2> {

  int _currentIndex =0;



  int selectedRadioTile;

  @override


  setselectedRadioTile(int val){
    setState(() {
      selectedRadioTile = val;

    });
  }

  PageController _pageController;

  @override

  void initState() {
    super.initState();
    _pageController = PageController();
  }


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(

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
                              image: AssetImage('Images/profile2.jpg'),
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
                          child: Text("Donald",
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
                                'Oxford OX1 22JD, United Kingdom',
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
                          'Oxford University',
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
                          'RM800.00 Per Month',
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
                          'Major in English',
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
          ),
    );
  }

}
