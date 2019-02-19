import 'package:flutter/material.dart';


class Listtile extends StatelessWidget{
  Listtile();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Card(
                elevation: 12.0,
                child: 
                new Stack(
                  
                  children: <Widget>[
                   
                    new Container(
                      margin:EdgeInsets.all(10.0),
                      width: MediaQuery.of(context).size.width-100,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/pie.jpg"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                     new Container(
                        margin:EdgeInsets.all(10.0),
                      width: MediaQuery.of(context).size.width-100,
                      height: 200,
                      color: Color(0x77000000),
                      child:  new Center(child:new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text("Apple Pie",style: TextStyle(fontSize: 40,color: Colors.white,fontFamily: 'LuckiestGuy',),),
                        new Text("@Tarun Kishore",style: TextStyle(fontSize: 16,color: Colors.white,fontFamily: 'Pacifico',),),
                      ],
                    )
                    ),
                    ),

                   
                  ],
                ),
              );
  }

}