import 'dart:async';

import 'package:flutter/material.dart';
import 'views/second_screen.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return StartState();
  }
}

class StartState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    startTimer();
  }

  startTimer()async{
    var duration = Duration(seconds:1);
    return Timer(duration,route);
  }

  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SecondScreen()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],
      body: Center(
        child:Image.asset(
          'Images/OTA.png',
          height: 250,
          width: 250,
        ),
      ),
    );
  }
}