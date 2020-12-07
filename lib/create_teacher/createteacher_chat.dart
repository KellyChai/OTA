
import 'package:flutter/material.dart';
import 'package:ot/teacher/data.dart';
import 'package:ot/teacher/dismissible_widget.dart';
import 'package:ot/teacher/utils.dart';

void main() => runApp(CreateTeacherChatPage());

class CreateTeacherChatPage extends StatelessWidget {
  final String title = 'Chats';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(
        primaryColor:  const Color(0xFFFBE9bd)
    ),
    home: MainPage(
        title: title),
  );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Chat> items = List.of(Data.chats);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(widget.title),
      actions: [

      ],
    ),
  );


}

