import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ot/create_student/createstudentprofile.dart';
import 'package:ot/create_student/maincreatestudent.dart';

void main() => runApp(new CreateStudent());

String name='';

class CreateStudent extends StatelessWidget {

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
  TextEditingController age=new TextEditingController();
  TextEditingController location=new TextEditingController();

  Future<List> senddata() async {
    var url = "http://192.168.1.131/flutter-login-register/upload_profile.php";
    var response = await http.post(url, body: {
      "name": name.text,
      "age": age.text,
      "location":location.text,

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
              Text("Age",style: TextStyle(fontSize: 18.0),),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: age,
                  decoration: InputDecoration(
                      hintText: 'Age...',
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
              RaisedButton(
                onPressed: (){
                  senddata();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateStudentMain(),),);
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