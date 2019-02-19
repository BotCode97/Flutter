import 'package:flutter/material.dart';
import 'package:hikkers/Discover.dart';
import 'Favourite.dart';
import 'Notification.dart';
import 'Profile.dart';
class HomePageState extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePage();
  }

}
class HomePage extends State<HomePageState> {

   

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
   setState(() {
     _selectedIndex = index;
   });
 }

 List<Widget> list = <Widget>[
   HomePage1State(),
   FavouriteState(),
   NotificationState(),
   ProfileState(),
   
 ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   
    
    Scaffold(
     backgroundColor: Colors.white,
       bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          
              // sets the background color of the `BottomNavigationBar`
              canvasColor: const Color(0xFFffffff),
            ), // sets the inactive color of the `BottomNavigationBar`
        child:BottomNavigationBar(
          
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: new Icon(Icons.map),title: 
          new Container(
            margin: EdgeInsets.only(bottom: 5,top: 5),
            child: 
          new Text("Discover",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'Pacifico'),)
          ,)
          ,backgroundColor: Colors.orange  ),
          BottomNavigationBarItem(icon: new Icon(Icons.star),title: new Text("Favourites",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'Pacifico'),),backgroundColor: Colors.orange  ),
           BottomNavigationBarItem(icon: new Icon(Icons.message),title: new Text("Notification",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'Pacifico'),),backgroundColor: Colors.orange  ),
          BottomNavigationBarItem(icon: new Icon(Icons.face),title: new Text("Profile",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'Pacifico'),),backgroundColor: Colors.orange )
        ],
        currentIndex: _selectedIndex,
        fixedColor: Color(0xffFFDE30),
        
        onTap:_onItemTapped,
        type: BottomNavigationBarType.fixed,
        
      )),



      body: list[_selectedIndex],
      );
  }

}