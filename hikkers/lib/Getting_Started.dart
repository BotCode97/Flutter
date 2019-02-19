import 'package:flutter/material.dart';
import 'HomePage.dart';
class getting_started_state extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return getting_started();
  }

}
class getting_started extends State<getting_started_state>with SingleTickerProviderStateMixin{
  
  
 AnimationController controller;
  Animation<Offset> offset;
  Animation<Offset> buttonOffset;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    offset = Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset.zero)
        .animate(controller);

    buttonOffset = Tween<Offset>(begin: Offset(0.0, 1.0),end: Offset.zero).animate(controller);
           switch (controller.status) {
                  case AnimationStatus.completed:
                    controller.reverse();
                    break;
                  case AnimationStatus.dismissed:
                    controller.forward();
                    break;
                  default:
                }

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     body: new Stack(children: <Widget>[

     //Background Container  
       new Container(
       decoration: new BoxDecoration(
         image: DecorationImage(
           image: new AssetImage("assets/mountains.jpg"),
           fit: BoxFit.cover,
         )
       ),
       
     ),
     
     //Gradient
     new Container(
       decoration: new BoxDecoration(
         gradient: LinearGradient(
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
           colors: [new Color(0x005200FF),new Color(0x775200FF),new Color(0x995200FF),new Color(0xdd5200FF)],
         )
       ),
       child: new Container(
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         child:new Column(
           mainAxisAlignment: MainAxisAlignment.end,
         children: <Widget>[
           new Container(
             margin: EdgeInsets.fromLTRB(26, 0, 0, 70),
             child: SlideTransition(
                   position: offset,
              child:new Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 
               new Row(children: <Widget>[
           new Text("Hike ",style: TextStyle(color: Color(0xffFFDE30),fontSize: 36,fontWeight: FontWeight.bold),),
           new Text("to the top of ",style: TextStyle(color: Colors.white,fontSize: 36,fontWeight: FontWeight.bold),)
         // to the top of the world
         ],),
         new Text("The World ",style: TextStyle(color: Color(0xffFFDE30),fontSize: 36,fontWeight: FontWeight.bold),),
         //the world
         ],
         
         )),
         ),
         new Container(
            margin: EdgeInsets.fromLTRB(24, 0, 0, 70),
           child:  SlideTransition(
                   position: buttonOffset,
              child:
          new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new RawMaterialButton(
                
                onPressed: (){
                 
                },
                child: new Container(
                 width: 172,
                 height: 53,
                 padding: EdgeInsets.fromLTRB(35, 12, 35, 12),
                  decoration: new BoxDecoration(
                    borderRadius:BorderRadius.circular(10),
                    color: Color(0xffFFDE30),
                  ),
                  child: new Center(
                    child: new Text("Get Started",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff141414)),),
                  ),
                ),
              ),



              new RawMaterialButton(
                
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePageState()) );
                },
                child: new Container(
                  margin: EdgeInsets.fromLTRB(24, 0, 0, 0),
                   width: 172,
                 height: 53,
                 padding: EdgeInsets.fromLTRB(35, 12, 35, 12),
                  decoration: new BoxDecoration(
                    borderRadius:BorderRadius.circular(10),
                    color: Color(0xff151515),
                  ),
                  child: new Center(
                    child: new Text("Login",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xffFFDE30)),),
                  ),
                ),
              )

            ],
          ),)),
         ],
       ),),
     )
     
     
     ],) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}