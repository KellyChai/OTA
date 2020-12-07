
import 'package:flutter/material.dart';
import 'package:ot/teacher/data.dart';
import 'package:ot/teacher/dismissible_widget.dart';
import 'package:ot/teacher/utils.dart';

void main() => runApp(TeacherChatPage());

class TeacherChatPage extends StatelessWidget {
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
    body: ListView.separated(
      itemCount: items.length,
      separatorBuilder: (context, index) => Divider(),
      itemBuilder: (context, index) {
        final item = items[index];

        return DismissibleWidget(
          item: item,
          child: buildListTile(item),
          onDismissed: (direction) =>
              dismissItem(context, index, direction),
        );
      },
    ),
  );

  void dismissItem(
      BuildContext context,
      int index,
      DismissDirection direction,
      ) {
    setState(() {
      items.removeAt(index);
    });

    switch (direction) {
      case DismissDirection.endToStart:
        Utils.showSnackBar(context, 'Student has been declined');
        break;
      case DismissDirection.startToEnd:
        Utils.showSnackBar(context, 'Student has been accepted');
        break;
      default:
        break;
    }
  }

  Widget buildListTile(Chat item) => ListTile(
    contentPadding: EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 16,
    ),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.username,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
        ),
        const SizedBox(height: 4),
        Text(
          item.message,
          style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),
        ),
        const SizedBox(height: 4),

      ],
    ),
    onTap: () {},
  );
}

