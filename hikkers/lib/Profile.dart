import 'package:flutter/material.dart';

class ProfileState extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Profile();
  }

}

class Profile extends State<ProfileState>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new Center(
        child: new Text("Profile Page is under Development",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Color(0xff141414)),textAlign: TextAlign.center,),
      ),
    );
  }

}