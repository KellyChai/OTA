import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ot/student/bottomnavigations.dart';
import 'package:ot/student/mainstudent.dart';
import 'package:ot/student/student_view.dart';
import 'package:ot/teacher/bottomnavigation.dart';
import 'package:ot/teacher/teacher_view_apply.dart';
import 'package:ot/views/sign_up_view.dart';
import 'package:http/http.dart' as http;
import 'package:ot/views/studentorteacher.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],
        body: _LoginScreen(
        ),
      );
  }
}
class _LoginScreen extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<_LoginScreen> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  Future login() async {
    var url = "http://192.168.1.131/flutter-login-register/login.php";
    var response = await http.post(url, body: {
      "username": user.text,
      "password": pass.text,
    });
    var data = json.decode(response.body);
    if (data == "Success") {
      Fluttertoast.showToast(
          msg: "Login Success",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.deepOrange[100],
          textColor: Colors.white,
          fontSize: 16.0
      );
      Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomStateT(),),);
    } else {
      Scaffold.of(context).showSnackBar(

        SnackBar(content:
        Text('Incorrect username and password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {


    return Center(
      child: Container(

          child: Container(
          height: 300,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('Images/OTA.png'),
                    fit: BoxFit.cover,
                  )
              ),
              child: Column(
                children: <Widget>[
                  Text("Log In",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),),
                  Text(
                    "Name  ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      controller: user,
                    ),
                  ),
                  Text(
                    "Password  ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      controller: pass,
                    ),
                  ),
                Wrap(
                    children: <Widget>[
                      RaisedButton(
                        color: Colors.deepOrange[100],
                        child: Text('Login',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        onPressed: () {
                          login();
                        }
                      ),
                      RaisedButton(
                        color: Colors.deepOrange[100],
                        child: Text('Register',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpView(),
                            ),
                          );
                        },
                      ),
                    ],
                ),
                    ],
                  ),
            ),
          ),
          ),
    );
  }
}