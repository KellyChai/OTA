import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ot/create_student/createstudentprofile.dart';
import 'package:ot/create_student/maincreatestudent.dart';
import 'package:ot/create_teacher/createteacher.dart';

void main() => runApp(new CreateTeacher());

String name='';

class CreateTeacher extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App with MYSQL',
      home: new MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController name=new TextEditingController();
  TextEditingController location=new TextEditingController();
  TextEditingController university=new TextEditingController();
  TextEditingController fees=new TextEditingController();
  TextEditingController qualification=new TextEditingController();

  Future<List> senddata() async {
    var url = "http://192.168.1.131/flutter-login-register/upload.php";
    var response = await http.post(url, body: {
      "name": name.text,
      "location": location.text,
      "university": university.text,
      "fees": fees.text,
      "qualification" :qualification.text,

    });


  }

  @override
  Widget build(BuildContext context) {

    final _width=MediaQuery.of(context).size.width;
    final _height=MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: Colors.deepOrange[100],
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: _height * 0.10),
              Text("Name",style: TextStyle(fontSize: 18.0),),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: name,
                  decoration: InputDecoration(
                    hintText: 'Name...',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
              SizedBox(height: _height * 0.03),
              Text("Location",style: TextStyle(fontSize: 18.0),),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: location,
                  decoration: InputDecoration(
                    hintText: 'Location...',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
              SizedBox(height: _height * 0.03),
              Text("University Graduated From",style: TextStyle(fontSize: 18.0),),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: university,
                  decoration: InputDecoration(
                    hintText: 'University...',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
              SizedBox(height: _height * 0.03),
              Text("Fees",style: TextStyle(fontSize: 18.0),),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: fees,
                  decoration: InputDecoration(
                    hintText: 'Fees...',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
              SizedBox(height: _height * 0.03),
              Text("Qualification",style: TextStyle(fontSize: 18.0),),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: qualification,
                  decoration: InputDecoration(
                    hintText: 'Qualification...',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),

              SizedBox(height: _height * 0.03),
              RaisedButton(
                onPressed: (){
                  senddata();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateTeacherMain(),),);
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white)),
                color :Colors.deepOrange[100],
                textColor: Colors.black,
                child: Text("Send",
                    style: TextStyle(color:Colors.white,fontSize: 18)),
              ),

            ],
          ),
        ),
      ),
    );
  }
}