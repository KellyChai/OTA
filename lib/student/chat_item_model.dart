import 'package:flutter/cupertino.dart';

class ChatItemModel{
  String senderId;
  String message;

  ChatItemModel({this.senderId, this.message});

  static List<ChatItemModel>list = [

        ChatItemModel(
            senderId: "1" ,
            message: "Hi, thank you and have a nice day."
        ),

        ChatItemModel(
            senderId: "2" ,
            message: "If its decline, please do apply again and select the other date from the schedule."
        ),


        ChatItemModel(
            senderId: "2" ,
            message: "After selecting the date from the schedule, I would either accept or decline the date that you chose!"
        ),

        ChatItemModel(
        senderId: "2" ,
        message: "Hi!, we have received your schedule which you selected from earlier on."
          ),



  ];
}