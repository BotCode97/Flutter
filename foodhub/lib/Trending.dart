import 'package:flutter/material.dart';

class Trending extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      width: 370,
           margin: EdgeInsets.all(10.0),
           decoration: new BoxDecoration(
             borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
           ),
           child: new Card(
             elevation: 8,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(10.0)
             ),
             child:new Stack(
            children: <Widget>[
              new Container(
                height: 250,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
                  image: new DecorationImage(
                    image: new AssetImage('assets/bc.jpg'),
                    fit: BoxFit.cover
                  )
                ),
              ),
              new Container(
                 width: double.infinity,
                decoration:new BoxDecoration(
                    color: const Color(0x77000000),
             borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
              ),
                height: 250,
                child: new Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 16.0),
                  child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  
                  children: <Widget>[
                    new Text("Butter Chicken",style: new TextStyle(color: Colors.white,fontSize: 35.0 ,fontFamily: 'LuckiestGuy', fontStyle: FontStyle.italic,shadows: <Shadow>[
                      Shadow(
        offset: Offset(1.0, 0.0),
        blurRadius: 3.0,
        color: Color.fromRGBO(0, 0, 0, 10)
      ),
                    ]),textAlign: TextAlign.left,),
                    new Text("@ Shrey Saxena",style: new TextStyle(color: Colors.white,fontSize: 20.0,fontFamily: 'Pacifico', fontStyle: FontStyle.italic,shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 0.0),
                        blurRadius: 3.0,
                        color: Color.fromRGBO(0, 0, 0, 10)
                      )
                    ]),textAlign:TextAlign.left,),


                   
                  ],
                ),
              
              ),)
            ],
          )))
          
          ;
  }


} 