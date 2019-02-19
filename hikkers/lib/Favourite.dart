import 'package:flutter/material.dart';

class FavouriteState extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Favourite();
  }

}

class Favourite extends State<FavouriteState>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new Center(
        child: new Text("Favourite Page is under Development",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Color(0xff141414)),textAlign: TextAlign.center,),
      ),
    );
  }

}