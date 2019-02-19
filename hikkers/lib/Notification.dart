import 'package:flutter/material.dart';

class NotificationState extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Notification();
  }

}

class Notification extends State<NotificationState>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new Center(
        child: new Text("Notification Page is under Development",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Color(0xff141414)),textAlign: TextAlign.center,),
      ),
    );
  }

}