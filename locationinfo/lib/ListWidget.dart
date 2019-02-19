import 'dart:ui';
import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget{

 String CityName;
 String Time;
 String imageuri;
 ListWidget(this.CityName,this.Time,this.imageuri);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Stack(
      children: <Widget>[
  
     new Container(
      
      width: 380,
      height: 186,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        boxShadow:[ new BoxShadow(
          color: Colors.black,
          blurRadius: 2.5

        )],
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(5.0))
        ,image: new DecorationImage(
          image: new AssetImage(imageuri),
          fit: BoxFit.cover
        ),)
     ),

      new Container(
      width: 380,
      height: 186,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: const Color(0xaa342C2C),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        
      ),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Container(
            width: 380,
            margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(CityName,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.left,),
                 new Text(Time,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.left,)
              ],
            ),
          ),
          new Container(
            margin: EdgeInsets.all(16.0),
            child:new Row(
            children: <Widget>[
              new Icon(Icons.flight,color: Colors.white,),
              new Container(
                height: 24.0,
                width: 1.0,
                color: Colors.white,
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              ),
              new Icon(Icons.hotel,color: Colors.white,),
              new Container(
                height: 24.0,
                width: 1.0,
                color: Colors.white,
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              ),
              new Icon(Icons.web,color: Colors.white,),
              
            ],
          ))
        ],
      ),
      
    ),


    ],);

    
  }

  

}
