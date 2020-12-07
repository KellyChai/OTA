import 'package:flutter/material.dart';
import 'package:ot/create_teacher/createteacher_account.dart';
import 'package:ot/create_teacher/createteacher_chat.dart';

import 'package:ot/create_teacher/createteacher_view.dart';
import 'package:ot/teacher/teacher_chat.dart';



class BottomStateTeacher extends StatefulWidget {

  @override
  _BottomState createState()=>_BottomState();


}

class _BottomState extends State<BottomStateTeacher> {



  PageController _pageController = PageController();
  List<Widget>_screens=[
    CreateTeacherChatPage(),CreateTeacherAccount()
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
            label:'Home',
            backgroundColor: Colors.deepOrange[100],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box,
                color: _selectedIndex ==1?  const Color(0xFFFBE9bd): Colors.white),
            label:'Account',
            backgroundColor: Colors.deepOrange[100],
          ),
        ],
      ),
    );
  }

}
