import 'package:flutter/material.dart';
import 'HomePage.dart';

class HomePage1State extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePage1();
  }

}
class HomePage1 extends State<HomePage1State>with SingleTickerProviderStateMixin{
  
   AnimationController controller;
  Animation<Offset> offset;
  Animation<Offset> buttonOffset;

   Animation<Offset> getOffset(){
     
  }
  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));

    offset = Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset.zero)
        .animate(controller);

    buttonOffset = Tween<Offset>(begin: Offset(0.0, -1.0),end: Offset.zero).animate(controller);
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
  List<String> trekName = <String>[
    "Everest Base Camp",
    "Chadar",
    "Gangotri Gomukh",
    "Markha Valley",
    "Goecha La",
   
    
  ];
  List<String> altitude = <String>[
    "Shrey Saxena",
    "Piyush Arya",
    "Vani Shinghal",
    "Hemant Dhiman",
    "Varsha Yadav",
   
  ];
  List<String> images = <String>[
    "assets/everest.jpg",
    "assets/chadar.jpg",
    "assets/Tapovan.jpg",
    "assets/markha.jpg",
    "assets/goechala.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

         new SlideTransition(
           position: buttonOffset,
           child:  //Search Bar
          new Container(
            margin: EdgeInsets.fromLTRB(60, 60, 0,30),
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width-120,
              height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffeeeeee),
            ),
            child: new TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search",
              ),
            ),
          ),
),
          //Top Treks
        
          new Container(
            margin: EdgeInsets.only(left: 30,bottom: 10,right: 20),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              new Text("Top Stories",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
             new FlatButton(
               
               onPressed: (){},
               child:
               new Container(
                 padding: EdgeInsets.only(left: 20,top: 5,right: 20,bottom: 5),
                 decoration: BoxDecoration(
                   border: Border.all(color: Color(0xff141414),width: 1),
                   borderRadius: BorderRadius.circular(10)
                 ),
                 child:  
              new Text("See more",style: TextStyle(fontSize: 14 ,color: Color(0xff141414)),),),)
          ],)),

          //List
          new Container(
          
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: 230,
            child: 
          ListView.builder(
            itemCount: trekName.length,
            scrollDirection: Axis.horizontal ,
            itemBuilder:(BuildContext context,int position){
            return SlideTransition(
              position: offset,
              child:  
            new Container(
              
              margin: EdgeInsets.only(left: 20,right: 10,bottom: 10),
              width: 169,
              height: 190,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(color: Color(0x44000000),offset: Offset(0, 4),blurRadius: 4)
                ],
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(images[position]),
                  fit: BoxFit.cover,
                )
              ),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Container(
                      padding: EdgeInsets.all(16),
                      width: 169,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ,
                      color: Colors.white,
                      ),
                      child: new Center(child: 
                      new Column(children: <Widget>[
                        new Container( 
                          margin: EdgeInsets.only(bottom: 5),
                          child: 
                      new Text(trekName[position],style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),),
                      
                      new Text(altitude[position],style: TextStyle(fontSize: 12,color: Color(0xaa000000)),)
                      
                      ],)),
                    )
                  ],
                ),
            ),);

          }),
          ),

          //Easy Difficulty

          new Container(
            margin: EdgeInsets.only(left: 30,bottom: 20,right: 20,top: 10),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              new Text("Followed by you",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            new FlatButton(
               
               onPressed: (){},
               child:
               new Container(
                 padding: EdgeInsets.only(left: 20,top: 5,right: 20,bottom: 5),
                 decoration: BoxDecoration(
                   border: Border.all(color: Color(0xff141414),width: 1),
                   borderRadius: BorderRadius.circular(10)
                 ),
                 child:  
              new Text("See more",style: TextStyle(fontSize: 14 ,color: Color(0xff141414)),),),)
          ],)),
          //its list

          //its list

           new Container(
          
            width: MediaQuery.of(context).size.width,
            height: 230,
            child: 
          ListView.builder(
            itemCount: trekName.length,
            scrollDirection: Axis.horizontal ,
            itemBuilder:(BuildContext context,int position){
            return SlideTransition(
              position: offset,
              child:new Container(
              
              margin: EdgeInsets.only(left: 20,right: 10,bottom: 10),
              width: 169,
              height: 190,
             
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Container(
                      width: MediaQuery.of(context).size.width,
                      height: 153,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage(images[position]),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.all(16),
                      width: 169,
                      decoration: BoxDecoration(
                       
                      color: Colors.white,
                      ),
                      child: new Center(child: 
                      new Column(children: <Widget>[
                        new Container( 
                          margin: EdgeInsets.only(bottom: 5),
                          child: 
                      new Text(trekName[position],style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),),
                      
                      new Text(altitude[position],style: TextStyle(fontSize: 12,color: Color(0xaa000000)),)
                      
                      ],)),
                    )
                  ],
                ),
            ));

          }),
          ),
          
          
          //Medium Difficulty

          new Container(
            margin: EdgeInsets.only(left: 30,bottom: 20,right: 20,top: 10),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                
              new Text("Recent Stories",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              new FlatButton(
               
               onPressed: (){},
               child:
               new Container(
                 padding: EdgeInsets.only(left: 20,top: 5,right: 20,bottom: 5),
                 decoration: BoxDecoration(
                   border: Border.all(color: Color(0xff141414),width: 1),
                   borderRadius: BorderRadius.circular(10)
                 ),
                 child:  
              new Text("See more",style: TextStyle(fontSize: 14 ,color: Color(0xff141414)),),),)
          ],)),

          //its list

           new Container(
          
            width: MediaQuery.of(context).size.width,
            height: 230,
            child: 
          ListView.builder(
            itemCount: trekName.length,
            scrollDirection: Axis.horizontal ,
            itemBuilder:(BuildContext context,int position){
            return SlideTransition(
              position: offset,
              child:new Container(
              
              margin: EdgeInsets.only(left: 20,right: 10,bottom: 10),
              width: 169,
              height: 190,
             
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Container(
                      width: MediaQuery.of(context).size.width,
                      height: 153,
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage(images[position]),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.all(16),
                      width: 169,
                      decoration: BoxDecoration(
                       
                      color: Colors.white,
                      ),
                      child: new Center(child: 
                      new Column(children: <Widget>[
                        new Container( 
                          margin: EdgeInsets.only(bottom: 5),
                          child: 
                      new Text(trekName[position],style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),),
                      
                      new Text(altitude[position],style: TextStyle(fontSize: 12,color: Color(0xaa000000)),)
                      
                      ],)),
                    )
                  ],
                ),
            ));

          }),
          )
          

        ],
      )


      );
  }

}