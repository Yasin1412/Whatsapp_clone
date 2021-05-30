import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CallModel{
  final String name;
  final String message;
  final String time;
  final String avatar;
  final Icon callType;
 CallModel({this.name,this.message,this.time,this.avatar,this.callType});

 static Icon callReceived=Icon(
   Icons.call_received,
   size: 18,
   color: Colors.green,
 );
 static Icon callMissed=Icon(
   Icons.call_missed,
   size: 18,
   color: Colors.red,
 );

  
}
List<CallModel>callData=[
 CallModel(
    name: "Atharv",
    time: "10:20",
    callType: CallModel.callReceived,
    avatar: "images/img1.jpg",
  ),
 CallModel(
    name: "Yasin",
    time: "7:20",
    callType: CallModel.callMissed,
    avatar: "images/img2.jpg",
  ),
 CallModel(
    name: "Ganesh",
    time: "5:20",
    callType: CallModel.callMissed,
    avatar: "images/img3.jpg",
  ),
 CallModel(
    name: "Tushar",
    time: "5:20",
    callType: CallModel.callReceived, 
    avatar: "images/img4.jpg",
  ),
 CallModel(
    name: "Sahil",
    time: "5:20",
    callType: CallModel.callReceived, 
    avatar: "images/img5.jpg",
  ),
 CallModel(
    name: "Bilal",
    time: "10:20",
    callType: CallModel.callMissed,
    avatar: "images/img1.jpg",
  ),
 CallModel(
    name: "Amar",
    time: "7:20",
    callType: CallModel.callReceived, 
    avatar: "images/img2.jpg",
  ),
 CallModel(
    name: "Rohit",
    time: "5:20",
    callType: CallModel.callReceived, 
    avatar: "images/img3.jpg",
  ),
 CallModel(
    name: "Prashant",
    time: "5:20",
    callType: CallModel.callMissed, 
    avatar: "images/img4.jpg",
  ),
 CallModel(
    name: "Arbaj",
    time: "5:20",
    callType: CallModel.callReceived, 
    avatar: "images/img5.jpg",
  ),
 CallModel(
    name: "Atharv",
    time: "10:20",
    avatar: "images/img1.jpg",
    callType: CallModel.callMissed, 
  ),
 CallModel(
    name: "Yasin",
    time: "7:20",
    avatar: "images/img2.jpg",
    callType: CallModel.callMissed, 
  ),
 CallModel(
    name: "Ganesh",
    callType: CallModel.callMissed,
    time: "5:20",
    avatar: "images/img3.jpg",
  ),
 CallModel(
    name: "Tushar",
    time: "5:20",
    callType: CallModel.callReceived, 
    avatar: "images/img4.jpg",
  ),
 CallModel(
    name: "Sahil",
    time: "5:20",
    callType: CallModel.callMissed,
    avatar: "images/img5.jpg",
  ),
 CallModel(
    name: "Bilal",
    time: "10:20",
    callType: CallModel.callReceived, 
    avatar: "images/img1.jpg",
  ),
 CallModel(
    name: "Amar",
    time: "7:20",
    callType: CallModel.callMissed, 
    avatar: "images/img2.jpg",
  ),
 CallModel(
    name: "Rohit",
    time: "5:20",
    callType: CallModel.callMissed, 
    avatar: "images/img3.jpg",
  ),
 CallModel(
    name: "Prashant",
    time: "5:20",
    callType: CallModel.callReceived, 
    avatar: "images/img4.jpg",
  ),
 CallModel(
    name: "Arbaj",
    time: "5:20",
    callType: CallModel.callReceived, 
    avatar: "images/img5.jpg",
  ),
 CallModel(
    name: "Atharv",
    time: "10:20",
    callType: CallModel.callReceived,
    avatar: "images/img1.jpg",
  ),
 CallModel(
    name: "Yasin",
    time: "7:20",
    callType: CallModel.callReceived,
    avatar: "images/img2.jpg",
  ),
 CallModel(
    name: "Ganesh",
    time: "5:20",
    callType: CallModel.callMissed, 
    avatar: "images/img3.jpg",
  ),

];