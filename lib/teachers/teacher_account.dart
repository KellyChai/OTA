import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ot/views/login_screen.dart';

class TeacherAccountPage extends StatefulWidget{
  TeacherAccountPage({Key key}) : super (key: key);

  @override
  _TeacherChatPage createState()=> _TeacherChatPage();

}

class _TeacherChatPage extends State<TeacherAccountPage>{

  Future getData()async{
    var url="http://192.168.1.109/flutter-login-register/display_teacher.php";
    var response = await http.get(url);
    return json.decode(response.body);
  }




  Widget build(BuildContext context) {

    final _width=MediaQuery.of(context).size.width;
    final _height=MediaQuery.of(context).size.height;

    return Scaffold(
      body:Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Images/OTA.png'),
              fit: BoxFit.cover,
            )
        ),


        child: FutureBuilder(
          future:getData(),
          builder:(context,snapshot){
            if(snapshot.hasError)print(snapshot.error);
            return snapshot.hasData ? ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder:(context,index){
                  List list = snapshot.data;
                  return Padding(
                    padding: const EdgeInsets.only(top:50.0),
                    child: Container(
                      width: _width,
                      height:580,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color(0xFFF3b146).withOpacity(0.6),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: _height * 0.03),
                          Container(
                            child: ListTile(
                              title:Text("Name :",
                                textAlign: TextAlign.center,
                                style: TextStyle(color:Colors.black,fontSize: 20),
                              ),
                              subtitle:Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(list[index]['name'],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color:Colors.black,fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: _height * 0.02),
                          ListTile(
                            title:Text("Location :",
                              textAlign: TextAlign.center,
                              style: TextStyle(color:Colors.black,fontSize: 20),
                            ),
                            subtitle:Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(list[index]['location'],
                                textAlign: TextAlign.center,
                                style: TextStyle(color:Colors.black,fontSize: 15),
                              ),
                            ),
                          ),
                          SizedBox(height: _height * 0.02),
                          ListTile(
                            title:Text("University :",
                              textAlign: TextAlign.center,
                              style: TextStyle(color:Colors.black,fontSize: 20),
                            ),
                            subtitle:Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(list[index]['university'],
                                textAlign: TextAlign.center,
                                style: TextStyle(color:Colors.black,fontSize: 15),
                              ),
                            ),
                          ),
                          SizedBox(height: _height * 0.02),
                          ListTile(
                            title:Text("Fees :",
                              textAlign: TextAlign.center,
                              style: TextStyle(color:Colors.black,fontSize: 20),
                            ),
                            subtitle:Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(list[index]['fees'],
                                textAlign: TextAlign.center,
                                style: TextStyle(color:Colors.black,fontSize: 15),
                              ),
                            ),
                          ),SizedBox(height: _height * 0.02),
                          ListTile(
                            title:Text("Qualification :",
                              textAlign: TextAlign.center,
                              style: TextStyle(color:Colors.black,fontSize: 20),
                            ),
                            subtitle:Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(list[index]['qualification'],
                                textAlign: TextAlign.center,
                                style: TextStyle(color:Colors.black,fontSize: 15),
                              ),
                            ),
                          ),

                          SizedBox(height: _height * 0.05),
                          RaisedButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen(),),);
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.white)),
                            color :const Color(0xFFFBE9bd),
                            textColor: Colors.black,
                            child: Text("Log Out",
                                style: TextStyle(color:Colors.black,fontSize: 18)),
                          ),
                        ],
                      ),
                    ),
                  );
                }
            ) : Center(child: CircularProgressIndicator(),);
          },
        ),
      ),

    );
  }

}