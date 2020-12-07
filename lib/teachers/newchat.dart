import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ot/teacher/bottomnavigation.dart';
import 'package:ot/teacher/chat_item_model.dart';
import 'package:ot/teacher/teacher_chat.dart';

class TeacherMessagePage extends StatefulWidget{
  TeacherMessagePage({Key key}) : super (key: key);

  @override
  _TeacherChatPage createState()=> _TeacherChatPage();

}

class _TeacherChatPage extends State<TeacherMessagePage>{

  String currentUser = "1";
  String pairId="2";
  List<ChatItemModel> chatItems= ChatItemModel.list;


  //Date and time


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[100],
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomStateT(),),);
          },
        ),
        actions: <Widget>[

        ],
        title: Text('Chats'),
      ),
      body:Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: chatItems.length,
              reverse: true,
              itemBuilder: (context,index){
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6,),
                  child: Row(
                    mainAxisAlignment:chatItems[index].senderId == currentUser ?
                    MainAxisAlignment.end:
                    MainAxisAlignment.start ,
                    children: <Widget>[

                      _isFirstMessage(chatItems, index) &&
                          chatItems[index].senderId == pairId
                          ? Container(
                        width: 30,
                        height: 30,

                      )
                          : Container(
                        width: 30,
                        height: 30,
                      ),
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * .7,
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 12),
                        margin: EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(_isFirstMessage(chatItems, index)?0:10),
                            bottomLeft: Radius.circular(_isLastMessage(chatItems, index)?0:10),
                          ),
                          color:chatItems[index].senderId == currentUser
                              ? AppColors.deepColor
                              : Colors.blue,
                        ),
                        child: Text("${chatItems[index].message}",
                          style: TextStyle(color: Colors.white,fontSize: 16
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },),
          ),
        ],
      ),
      bottomNavigationBar:_buildInput(),
    );
  }
  Widget _buildInput(){
    return Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF374c65),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Type Something.....',
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _isFirstMessage(List<ChatItemModel> chatItems, int index) {
    return (chatItems[index].senderId !=
        chatItems[index - 1 < 0 ? 0 : index - 1].senderId) ||
        index == 0;
  }

  _isLastMessage(List<ChatItemModel> chatItems, int index) {
    int maxItem = chatItems.length -1;
    return (chatItems[index].senderId !=
        chatItems[index + 1 > maxItem ? maxItem : index + 1].senderId) ||
        index == maxItem;
  }


}


class AppColors {
  static Color deepColor = Colors.deepOrange;
}