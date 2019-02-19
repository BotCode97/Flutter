import 'package:flutter/material.dart';
import 'ListWidget.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  Icon icons = new Icon(Icons.close);
  AppBar bar;

 void setAppBar(){
   setState(() {
        if(icons.icon == Icons.search){
          icons = new Icon(Icons.close);
          bar =  AppBar(
        elevation: 0.0,
      
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Center(child: new Container(
          decoration: new BoxDecoration(
            boxShadow:[ new BoxShadow(
              color: Colors.grey,
              blurRadius: 2.5,
            )],
            color: Colors.white,
             borderRadius: BorderRadius.all(Radius.circular(5.0))
          ),
          child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
             new FlatButton(child:new Icon(icons.icon,color:Colors.black)
        ,onPressed: (){
            setAppBar();
            print("world");
        },
        ),
          Flexible(child:TextField(
              
  decoration: InputDecoration(
    
    border: InputBorder.none,
    hintText: 'Search...',
    fillColor: Colors.white,
  ),
  ) ,
  ),
  
      new FlatButton(child:new Icon(Icons.mic,color:Colors.black)
        ,onPressed: (){
        },
        )
    ],))), 
        //new Center(child: new Text("Google Trips",style: TextStyle(color: Colors.black),),),
        
        backgroundColor: Colors.white,
      );
      
        }else{
          icons = new Icon(Icons.search);
          bar = new  AppBar(
        elevation: 0.0,
        leading: new FlatButton(child:new Icon(icons.icon,color:Colors.black)
        ,onPressed: (){
          setAppBar();
          print("hello");
        },
        ),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Center(child: new Container(
          width: 150.0,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/title.png")
            )
          ),
        )), 
        //new Center(child: new Text("Google Trips",style: TextStyle(color: Colors.black),),),
        actions: <Widget>[
          new Container(margin: EdgeInsets.fromLTRB(0.0, 0.0, 16.0, 0.0),child: new Icon(Icons.menu,color: Colors.black,) ,)
        

          
        ],
        backgroundColor: Colors.white,
      );
      _counter ++;
        }
      });
 }
  
 
  List<CityData> list = [
      new CityData("NEW YORK", "08:46 am","assets/newyork.jpg"),
      new CityData("LONDON", "01:45 pm","assets/london.png"),
      new CityData("PARIS", "02:45 pm","assets/paris.jpg"),
      new CityData("NEW DELHI", "11:15 pm","assets/delhi.jpg")
  ];
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    if(_counter == 0){
      setAppBar();
    }
    return Scaffold(
      appBar: bar,
      body: new Container(
        color: Colors.white,
        child:ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: list.length,
        itemBuilder: (BuildContext context,int index){
          return ListWidget(list[index].CityName,list[index].Time,list[index].ImageUri);
        },
      )
    ));
  }
}
class CityData {
   String CityName;
   String Time;
   String ImageUri;
   CityData(this.CityName,this.Time,this.ImageUri);
  }
