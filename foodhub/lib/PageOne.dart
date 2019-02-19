import 'package:flutter/material.dart';
import 'ListTile.dart';
import 'Trending.dart';
import 'Category.dart';
class PageOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return 
        new Column(
        children: <Widget>[
          

          // TRENDING CONTAINER 

          new Container(
             margin: EdgeInsets.fromLTRB(0,20,0,0),
            child: 
          new Row(children: <Widget>[
          new RotatedBox(
  
            quarterTurns: 3,
            child: new Container(
              
              margin: EdgeInsets.all(15),
              child:new Text("Trending",style: TextStyle(fontSize: 30,color: Colors.white, fontFamily: 'LuckiestGuy'),)),
          ),
         
          new Container(
           
            width: MediaQuery.of(context).size.width-60,
            height: 220,
            child:  
        new ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (BuildContext context,int index){
            return Trending();    
          },
        )
        ,)
        ],)
        
          ,)

         ,
          //CATERGORIES CONTAINER

         new Container(
           margin: EdgeInsets.fromLTRB(0.0,15.0,0,0),
           child: 
         new Row(
           
           children: <Widget>[
             new RotatedBox(
            quarterTurns: 3,
            child: new Container(
              margin: EdgeInsets.fromLTRB(15, 20, 15, 22),
              child:new Text("Categories",style: TextStyle(fontSize: 30,color: Colors.white, fontFamily: 'LuckiestGuy'),)),
          ),
             new Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10.0)
               ),
               elevation: 8,child:new Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Colors.white,
               ),
           width: MediaQuery.of(context).size.width-80,
           height: 150,
           
           child:Category()),)],),),


       new Container(
         margin: EdgeInsets.fromLTRB(0,15,0,0),
         child: 
          new Row(children: <Widget>[
          new RotatedBox(
            quarterTurns: 3,
            child: new Container(
              margin: EdgeInsets.all(20),
              child:new Text("Daily Uploads",style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: 'LuckiestGuy'),)),
          ),
         
          new Container(
           
            width: MediaQuery.of(context).size.width-70,
            height: 240,
            child:  
        new ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (BuildContext context,int index){
            return Listtile();    
          },
        )
        ,)
        ],)
        
       ),
        ],
      );
  }


}