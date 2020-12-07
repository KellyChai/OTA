import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:ot/views/createstuorteacher.dart';

class SignUpView extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<SignUpView> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  Future<String> register() async {
    var url = "http://192.168.1.131/flutter-login-register/register.php";
    var response = await http.post(url, body: {
      "username": user.text,
      "password": pass.text,
    });
    var data = json.decode(response.body);
    if (data == "Error") {
      Fluttertoast.showToast(
          msg: "This User Already Exist!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    } else {
      Fluttertoast.showToast(
          msg: "Registration Success",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateStudentorTeacher(),),);
    }
  }

  @override
  Widget build(BuildContext context) {
    final _width=MediaQuery.of(context).size.width;
    final _height=MediaQuery.of(context).size.height;

    Size size = MediaQuery.of(context).size;

    return Container(
      child: Container(
        height: 300,
        child: Card(
          color: Colors.deepOrange[50],
          child: Column(
            children: <Widget>[
              SizedBox(height: _height * 0.10),
              Text("Create Account",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),),
              SizedBox(height: _height * 0.05),
              Text(
                "Name  ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  controller: user,
                ),
              ),
              SizedBox(height: _height * 0.03),
              Text(
                "Password  ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  controller: pass,
                ),
              ),
              SizedBox(height: _height * 0.02),
              ButtonTheme(
                minWidth: 200.0,
                child:RaisedButton(
                  onPressed: () {
                    register();
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.white)),
                  color :Colors.deepOrange[100],
                  textColor: Colors.white,
                  child: Text("Register".toUpperCase(),
                      style: TextStyle(color:Colors.white,fontSize: 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}