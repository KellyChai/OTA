import 'package:flutter/cupertino.dart';

class ChatItemModel{
  String senderId;
  String message;

  ChatItemModel({this.senderId, this.message});

  static List<ChatItemModel>list = [

    ChatItemModel(
        senderId: "1" ,
        message: "Hi, glad to hear that, I will send you some relevant files in a minute yea."
    ),

    ChatItemModel(
        senderId: "2" ,
        message: "Hi!, Can I have more exercises to do for my upcoming exams?"
    ),



  ];
}