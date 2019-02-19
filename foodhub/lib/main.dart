import 'package:flutter/material.dart';
import 'PageOne.dart';
import 'PageTwo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: AuthState(),
    );
  }
}
class AuthState extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Authentication();
  }

}
class Authentication extends State<AuthState>with SingleTickerProviderStateMixin{
  Icon icon = new Icon(Icons.remove_red_eye);
  bool x = true;
  bool valid = true;
  bool valid1 = true;
  String text="LOGIN";
  var username = TextEditingController();
  var password = TextEditingController();
  var conpassword = TextEditingController();
  TabController _tabController;
  VoidCallback OnChanged;
  int currentIndex=0;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
   OnChanged = (){
      setState(() {
              currentIndex = this._tabController.index;
                if(currentIndex==0){
                    text="LOGIN";
                }else{
                  text="PROCEED";
                }
            });};
     _tabController.addListener(OnChanged);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
        
    // TODO: implement build
    return  new Scaffold(
       
     
         
          body: new Stack(
    children: <Widget>[
     
       new Container(
         
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover
          )
        ),
        child: TabBarView(
          controller: _tabController,
          children: <Widget>[
            new Container(
              margin: EdgeInsets.all(8),
              child: 
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[new Center(child: new Container(
             
               width: MediaQuery.of(context).size.width,
               height: 300,
              child: new Card(
                elevation: 12.0,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child:new Container(
                margin: EdgeInsets.only(top: 40),
                child:new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new SizedBox(
                        width: 10,
                        height: 30,
                        child: new Container(color: Colors.orange,),
                      ),
                         new Container(margin: EdgeInsets.only(left: 40),child:    
                        new Text("User ID",style:TextStyle(fontSize:20,fontFamily: 'LuckiestGuy'))
                      ,),
                    ],
                  ),

                  new Container(
                    margin: EdgeInsets.only(bottom: 16),
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: new TextField(
                      controller: username,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20,top: 16,bottom: 8)
                        ),
                        style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: 'Pacifico'),
                    ),
                  ),

                   new Row(
                    children: <Widget>[
                      new SizedBox(
                        width: 10,
                        height: 30,
                        child: new Container(color: Colors.orange,),
                      ),
                         new Container(margin: EdgeInsets.only(left: 40),child:    
                        new Text("Password",style:TextStyle(fontSize:20,fontFamily: 'LuckiestGuy'))
                      ,),
                    ],
                  ),

                   new Container(
                    
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: new TextField(
                      controller: password,
                      obscureText: x,
                        decoration: InputDecoration(
                          errorText: valid?null:"Username/Password is Invalid",
                          errorStyle: TextStyle(fontSize: 12,fontFamily: 'Pacifico'),
                          errorBorder: new OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                            suffix: new IconButton(
                              onPressed: (){
                                setState(() {
                                     if(x==true){
                                       x = false;
                                     }else{
                                       x=true;
                                     }                       
                                  });
                              },
                            icon: icon,
                          ),
                          contentPadding: EdgeInsets.only(left: 20,bottom: 8)
                        ),
                        style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: 'LuckiestGuy'),
                    ),
                  ),
                  new Container(
                    margin: EdgeInsets.only(right: 35),
                    child:new Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                      onPressed: (){},
                      child: new Text("Forgot Password",style:TextStyle(fontSize: 16,fontFamily: 'LuckiestGuy')),
                    )
                  ],
                  )),


               

                ],
              )),)
            )),
           

            
            ],),),
new Container(
              margin: EdgeInsets.all(8),
              child: 
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[new Center(child: new Container(
             
               width: MediaQuery.of(context).size.width,
               height: 400,
              child: new Card(
                elevation: 12.0,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child:new Container(
                margin: EdgeInsets.only(top: 40),
                child:new Column(
                children: <Widget>[
                  //Email/Username
                  new Row(
                    children: <Widget>[
                      new SizedBox(
                        width: 10,
                        height: 30,
                        child: new Container(color: Colors.orange,),
                      ),
                         new Container(margin: EdgeInsets.only(left: 40),child:    
                        new Text("User ID",style:TextStyle(fontSize:20,fontFamily: 'LuckiestGuy'))
                      ,),
                    ],
                  ),

                  new Container(
                    margin: EdgeInsets.only(bottom: 16),
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: new TextField(
                      controller: username,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20,top: 16,bottom: 8)
                        ),
                        style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: 'Pacifico'),
                    ),
                  ),

                   new Row(
                    children: <Widget>[
                      new SizedBox(
                        width: 10,
                        height: 30,
                        child: new Container(color: Colors.orange,),
                      ),
                         new Container(margin: EdgeInsets.only(left: 40),child:    
                        new Text("Password",style:TextStyle(fontSize:20,fontFamily: 'LuckiestGuy'))
                      ,),
                    ],
                  ),

                   new Container(
                    
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: new TextField(
                      controller: password,
                      obscureText: x,
                        decoration: InputDecoration(
                          
                          
                            suffix: new IconButton(
                              onPressed: (){
                                setState(() {
                                     if(x==true){
                                       x = false;
                                     }else{
                                       x=true;
                                     }                       
                                  });
                              },
                            icon: icon,
                          ),
                          contentPadding: EdgeInsets.only(left: 20,bottom: 8)
                        ),
                        style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: 'Pacifico'),
                    ),
                  ),
                
                   
                  new Row(
                    children: <Widget>[
                      new SizedBox(
                        width: 10,
                        height: 30,
                        child: new Container(color: Colors.orange,),
                      ),
                         new Container(margin: EdgeInsets.only(left: 40 ,top: 24),child:    
                        new Text("Confirm Password",style:TextStyle(fontSize:20,fontFamily: 'Pacifico'))
                      ,),
                    ],
                  ),

                   new Container(
                    
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: new TextField(
                      controller: conpassword,
                      obscureText: x,
                        decoration: InputDecoration(
                          errorText: valid1?null:"Password Do not Match",
                          errorStyle: TextStyle(fontSize: 12,fontFamily: 'LuckiestGuy'),
                          errorBorder: new OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                            suffix: new IconButton(
                              onPressed: (){
                                setState(() {
                                     if(x==true){
                                       x = false;
                                     }else{
                                       x=true;
                                     }                       
                                  });
                              },
                            icon: icon,
                          ),
                          contentPadding: EdgeInsets.only(left: 20,bottom: 8)
                        ),
                        style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: 'LuckiestGuy'),
                    ),
                  ),
               

                ],
              )),)
            )),
           

            
            ],),)          ],
        ),
      ),
      new Positioned(
        height: 100, //Place it at the top, and not use the entire screen
          top: 40.0,
          left: 0.0,
          right: 0.0,
          child: TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
              tabs: <Widget>[
                Tab(icon: new Text("Login",style: TextStyle(fontSize: 30,fontFamily: 'LuckiestGuy'),),),
                Tab(icon: new Text( 'Sign up',style: TextStyle(fontSize: 30,fontFamily: 'LuckiestGuy')),)
              ],
            ),
           ),
 new Positioned(
        height: 70, //Place it at the top, and not use the entire screen
          top: MediaQuery.of(context).size.height-70,
          
          left: 0.0,
          right: 0.0,
          child:RawMaterialButton(
               
            onPressed: (){
              if(text=="LOGIN"){
                
                
              if(username.text =="ADMIN" && password.text=="1234"){
                setState(() {
                valid=true;                  
                  });
              Navigator.push(context, MaterialPageRoute(builder:(context)=>MyHomePage()));
              }else{
                setState(() {
                   valid=false;
                  });
              }
              }else{
                if(password.text==conpassword.text){
                  setState(() {
                       valid1=true;               
                  });
                }else{
                  setState(() {
                       valid1=false;               
                  });
                }
                }
            },
            fillColor: Colors.blue,
            child: new Center(child: new Text(text,style: TextStyle(fontSize: 25,fontFamily: 'LuckiestGuy',color: Colors.white),),),
          )),

    ],
  ),
        
      );
    
  }

}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
   setState(() {
     _selectedIndex = index;
   });
 }

 List<Widget> list = <Widget>[
   PageOne(),
   PageTwoState(),
   
 ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      resizeToAvoidBottomPadding: false,

      appBar:new AppBar(
        actions: <Widget>[
          new IconButton(
            onPressed: (){
                Navigator.pop(context);
            },
            icon: new Icon(Icons.exit_to_app),
          )
        ],
        elevation: 0.0,
        leading: new Icon(Icons.search),
        
       backgroundColor: const Color(0xff17e1e5),
      title: new Center(child: new Text("FOOD HUB" , style: new TextStyle(fontSize: 30, fontFamily: 'LuckiestGuy' ),),),
      ),
      
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`
              canvasColor: const Color(0xFFfba626),
            ), // sets the inactive color of the `BottomNavigationBar`
        child:BottomNavigationBar(
          
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: new Icon(Icons.home),title: new Text("Home",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'Pacifico'),),backgroundColor: Colors.orange  ),
          BottomNavigationBarItem(icon: new Icon(Icons.face),title: new Text("Profile",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'Pacifico'),),backgroundColor: Colors.orange )
        ],
        currentIndex: _selectedIndex,
        fixedColor: Color(0xfff4f4f4),
        
        onTap:_onItemTapped,
        
      )),
      backgroundColor: Color(0xff17e1e5),
      body:   list[_selectedIndex]
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

