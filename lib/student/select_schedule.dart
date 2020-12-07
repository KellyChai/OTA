import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ot/student/student_chat.dart';

void main()=>runApp(Schedule());

class Schedule extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Schedule',
      theme: ThemeData.light().copyWith(
        inputDecorationTheme: InputDecorationTheme(border: OutlineInputBorder())
      ),
      home: SchedulePage(
        title: 'Pick a time and day'
      ),
    );
  }
}

class SchedulePage extends StatefulWidget{
  SchedulePage({Key key,this.title}):super(key:key);
  final String title;

  @override
  _SchedulePage createState()=>_SchedulePage();
}

class _SchedulePage extends State<SchedulePage> {

  final formats= {
    InputType.both: DateFormat("EEEE,MMMM d, yyyy'at'h:mma"),
    InputType.date: DateFormat("yyyy-MM-dd"),
    InputType.time: DateFormat("HH:mm"),
  };

  InputType inputType = InputType.both;
  bool editable = true;
  DateTime date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            Text('Format: "${formats[inputType].pattern}"'),
            DateTimePickerFormField(
              inputType: inputType,
              format: formats[inputType],
              editable: editable,
              decoration: InputDecoration(
                labelText: 'Choose date',hasFloatingPlaceholder: false
              ),
              onChanged: (dt)=>setState(()=>date = dt),
            ),
            Text("Date Value : $date"),
            SizedBox(height:16.0),
            RaisedButton(
                color: Colors.deepOrange[100],
                child: Text('Continue',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentChatPage(),),);
                }
            ),

          ],
        ),
      ),
    );
  }

  void updateInputType({bool date, bool time}){
    date = date ?? inputType != InputType.time;
    date = time ?? inputType != InputType.date;
    setState(()=>inputType = date ? time ? InputType.both : InputType.date : InputType.time);
  }


}

