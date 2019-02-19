import 'package:flutter/material.dart';

class Category extends StatelessWidget{
  
  List<CategoryData> list = <CategoryData>[
   new CategoryData("assets/dm.bmp", "Vegitarian "),
   new CategoryData("assets/bc.jpg", "Non-Veg"),
   new CategoryData("assets/pie.jpg", "Deserts")
 ];
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
                      
                     width: MediaQuery.of(context).size.width,
                     margin: EdgeInsets.fromLTRB(10.0,10,10,10),
                     color: Colors.white,
                     child: new ListView.builder(
                       scrollDirection: Axis.horizontal,
                       itemCount: list.length,
                       itemBuilder: (BuildContext context,int index){
                         return new Stack(children: <Widget>[
                      new Container(

                        margin: EdgeInsets.all(10),
                        width: 100,
                        height: 100,
                        decoration: new BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(list[index].image),
                            fit: BoxFit.cover,
                          ),
                          color: Color(0xff25ced1),
                          shape: BoxShape.circle
                        ),
                      ),
                      new Container(
                         margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0x99000000)
                        ),
                        child: Center(child: new Text(list[index].text ,style: TextStyle(fontSize: 18,color: Colors.white,fontFamily: 'Pacifico'),),),
                      )
                      ],);
                       },
                     ),
                  /*
                  child: new Row(
                  
                    children: <Widget>[
                      new Stack(children: <Widget>[
                      new Container(

                        margin: EdgeInsets.fromLTRB(30.0,10.0,10.0,10.0),
                        width: 100,
                        height: 100,
                        decoration: new BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/pie.jpg"),
                            fit: BoxFit.cover,
                          ),
                          color: Color(0xff25ced1),
                          shape: BoxShape.circle
                        ),
                      ),
                      new Container(
                         margin: EdgeInsets.fromLTRB(30.0,10.0,10.0,10.0),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0x99000000)
                        ),
                        child: Center(child: new Text("Deserts" ,style: TextStyle(color: Colors.white),),),
                      )
                      ],),

 new Stack(children: <Widget>[
                      new Container(
                        margin: EdgeInsets.all(10.0),
                        width: 100,
                        height: 100,
                        decoration: new BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/bc.jpg"),
                            fit: BoxFit.cover,
                          ),
                          color: Color(0xff25ced1),
                          shape: BoxShape.circle
                        ),
                      ),
                      new Container(
                         margin: EdgeInsets.all(10.0),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0x99000000)
                        ),
                        child: Center(child: new Text("Non-Veg" ,style: TextStyle(color: Colors.white),),),
                      )
                      ],),

 new Stack(children: <Widget>[
                      new Container(
                        margin: EdgeInsets.fromLTRB(10.0,10.0,0.0,10.0),
                        width: 100,
                        height: 100,
                        decoration: new BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/dm.bmp"),
                            fit: BoxFit.cover,
                          ),
                          color: Color(0xff25ced1),
                          shape: BoxShape.circle
                        ),
                      ),
                      new Container(
                         
                        margin: EdgeInsets.fromLTRB(10.0,10.0,0.0,10.0),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0x99000000)
                        ),
                        child: Center(child: new Text("Vegitarian" ,style: TextStyle(color: Colors.white),),),
                      )
                      ],),

                    ],
                  ),
                  */
                );
  }

}
class CategoryData{
  String image;
  String text;
  CategoryData(this.image,this.text);
}