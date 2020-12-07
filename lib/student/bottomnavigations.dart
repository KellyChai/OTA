import 'package:flutter/material.dart';
import 'package:ot/student/student_account.dart';
import 'package:ot/student/student_chat.dart';
import 'package:ot/student/student_view.dart';



class BottomStateS extends StatefulWidget {

  @override
  _BottomState createState()=>_BottomState();


}

class _BottomState extends State<BottomStateS> {



  PageController _pageController = PageController();
  List<Widget>_screens=[
    StudentView(),
    StudentAccountPage()
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
            icon: Icon(Icons.delete,
                color: _selectedIndex ==1?  const Color(0xFF374c65): const Color(0xFF374c65)),
            label:'',
            backgroundColor: const Color(0xFF374c65),
          ),
        ],
      ),
    );
  }

}
