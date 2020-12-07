import 'package:flutter/material.dart';
import 'package:ot/teacher/newchat.dart';
import 'package:ot/teacher/teacher_chat.dart';



class BottomStateT extends StatefulWidget {

  @override
  _BottomState createState()=>_BottomState();


}

class _BottomState extends State<BottomStateT> {



  PageController _pageController = PageController();
  List<Widget>_screens=[
    TeacherChatPage(),TeacherMessagePage()
  ];

  int _selectedIndex = 0;
  void _onPageChanged(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  void _itemTapped(int selectedIndex){
      _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),

      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _itemTapped,
        backgroundColor: const Color(0xFF374c65),
        iconSize: 38,
        showSelectedLabels: false,
        items: [

          BottomNavigationBarItem(
            icon: Icon(Icons.home,
                color: _selectedIndex ==0? const Color(0xFFFBE9bd): Colors.white),
            label:'Accept or Decline',
            backgroundColor: Colors.deepOrange[100],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble,
                color: _selectedIndex ==1?  const Color(0xFFFBE9bd): Colors.white),
            label:'Message',
            backgroundColor: Colors.deepOrange[100],
          ),
        ],
      ),
    );
  }

}
