import 'package:flutter/material.dart';
import 'Trending.dart';
import 'Posts.dart';

class PageTwoState extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PageTwo();
  }

}

class PageTwo extends State<PageTwoState>{
  
  List<PostData> data = <PostData>[
      PostData("assets/bc.jpg", "ButterChicken", 20, 2),
      PostData("assets/dm.bmp", "Dal Makhni", 10, 4),
      PostData("assets/pie.jpg", "Apple Pie", 40, 1),

  ];
  Icon add = new Icon(Icons.add);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: 
    NestedScrollView( 
    headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
      return <Widget>[
          SliverAppBar(
            
            elevation: 0.0,
          backgroundColor: Color(0xff00A4EE),
            expandedHeight: 250.0,
            floating: false,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: new Stack(children: <Widget>[new Container(
                width: MediaQuery.of(context).size.width,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: new AssetImage("assets/profilepic.jpg"),
                    fit: BoxFit.cover
                  )
                ),
                
              ),
              new Container(
                width: MediaQuery.of(context).size.width,
                color: Color(0x77000000),
                child:  new Container(
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    new Text("SHREY SAXENA" ,style:TextStyle(fontSize: 30,color: Colors.white,fontFamily: 'LuckiestGuy'),textAlign: TextAlign.center,),
                    new Container(
                      margin: EdgeInsets.all(8),
                      width: 200,
                      child: new Text("An enthusiastic foodie and a UI/UX dev" ,style:TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'LuckiestGuy'),textAlign: TextAlign.center,),
                    ),

                   FloatingActionButton(
               
                onPressed: (){
                  setState(() {
                      if(add.icon == Icons.add){
                        add = new Icon(Icons.check);
                      }else{
                        add = new Icon(Icons.add);
                      }                
                  });
                },
                child: new Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                     color: Color(0x66000000),
                     border: Border.all(color: Color(0xff17e1e5),width: 2),
                     borderRadius: BorderRadius.circular(10)
                  ),
                 
                  child: add,
                ),
              )
                  ],))
              ),
              
              ],),
            
             

                  
            ),
          ),
          SliverPersistentHeader(
            
            delegate: _SliverAppBarDelegate(
               
            TabBar(
             labelColor: Colors.white,
             
              tabs: <Widget>[
              Tab(icon:new Text("24"),text:"Posts",),
              Tab(icon:new Text("24"),text:"Followers"),
              Tab(icon:new Text("24"),text:"Following")
            ],

            )),
            
            pinned: true
            ,)

      ];
    },
body: TabBarView(
  children: <Widget>[
    //Posts
  new ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return new Stack(
                      children: <Widget>[
                       
                        new Positioned(
                          top: 0.0,
                          bottom: 0.0,
                          left: 35.0,
                          child: new Container(
                            height: double.infinity,
                            width: 2.0,
                            color: Colors.white,
                          ),
                        ),
                        new Positioned(
                          top: 20.0,
                          left: 15.0,
                          child: new Container(
                            height: 60.0,
                            width: MediaQuery.of(context).size.width,
                            
                            child: new Row(children: <Widget>[
                              new Stack(children: <Widget>[
                              new Container(
                              margin: new EdgeInsets.only(left:2.0,right: 8.0),
                              height: 40.0,
                              width: 40.0,
                              decoration: new BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/profilepic.jpg"),
                                  fit: BoxFit.cover
                                ),
                                  shape: BoxShape.circle,
                                  color: Colors.white),
                            ),
                            new Container(
                              margin: new EdgeInsets.only(left:2.0,right: 8.0),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0x33000000)
                              ),
                            )
                            ],),
                            new Text(data[index].name,style: TextStyle(fontSize: 20,fontFamily: 'LuckiestGuy',color: Colors.white) ,)
                            ],),
                          ),
                        ),
 new Padding(
                          padding: const EdgeInsets.only(left: 50.0,top: 70),
                          child: new Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            
                            height: 250,
                            child:new Column(children: <Widget>[
                              new Container(
                                height: 200,
                                child: 
                              Posts(data[index].image,data[index].name),),
                            new Container(
                              child: Row(
                            
                                children: <Widget>[

                                  new Row(children: <Widget>[
                                    new Container(
                                      margin: EdgeInsets.only(left: 15),
                                      width: 40,
                                      height: 40,
                                     
                                      child: IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset("assets/like.png",fit: BoxFit.contain,),
                                      ),
                                    ),
                                    new Container(
                                      margin: EdgeInsets.only(left: 4,top: 8),
                                      child: 
                                    new Text(data[index].likes.toString(),style: TextStyle(fontSize: 16,fontFamily: 'LuckiestGuy'))
                                    ,)
                                    ],),

                                  new Row(children: <Widget>[
                                    new Container(
                                      margin: EdgeInsets.only(left: 15),
                                      width: 40,
                                      height: 40,
                                      child: IconButton(
                                        onPressed: (){

                                        },
                                        icon: Image.asset("assets/commets.png",fit: BoxFit.contain,),
                                      ),
                                    ),
                                    new Container(
                                      margin: EdgeInsets.only(left: 4,top: 8),
                                      child: 
                                    new Text(data[index].comments.toString(),style: TextStyle(fontSize: 16,fontFamily: 'LuckiestGuy'))
                                    ,)
                                    ],)
                                ],
                              ),
                            )
                            ],)),
                        ),

                      ],
                    );
                  },
                  itemCount: data.length,
                ),

// Following
    new ListView.builder(
      itemCount: 24,
      itemBuilder: (BuildContext context,int position){
        return new Container(
          color: Color(0xffffffff),
          child:new Column(children: <Widget>[ListTile(
          contentPadding: EdgeInsets.all(16),
          leading: new Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/profilepic.jpg"),
                fit: BoxFit.cover
              )
            ),
          ),

          title: new Text("Shrey Saxena",style:TextStyle(fontSize:20,fontFamily:'Pacifico')),
          trailing: 
          new RawMaterialButton(
            
            onPressed: (){},
            child: 
          new Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                     color: Color(0xff17e1e5),
                     border: Border.all(color: Color(0xff17e1e5),width: 2),
                     borderRadius: BorderRadius.circular(5)
                  ),
                 
                  child: new Icon(Icons.add,color: Colors.white,),
                ),),
        ),
        Divider(
          height: 0,
          color: Colors.white70,
        )
        ],));
      },
    ),
   
   
   // Following
    new ListView.builder(
      itemCount: 24,
      itemBuilder: (BuildContext context,int position){
        return new Container(
          color: Color(0xffffffff),
          child:new Column(children: <Widget>[ListTile(
          contentPadding: EdgeInsets.all(16),
          leading: new Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/profilepic.jpg"),
                fit: BoxFit.cover
              )
            ),
          ),

          title: new Text("Shrey Saxena",style:TextStyle(fontSize:20,fontFamily:'Pacifico')),
          trailing: 
          new RawMaterialButton(
            
            onPressed: (){},
            child: 
          new Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                     color: Color(0xff17e1e5),
                     border: Border.all(color: Color(0xff17e1e5),width: 2),
                     borderRadius: BorderRadius.circular(5)
                  ),
                 
                  child: new Icon(Icons.add,color: Colors.white,),
                ),),
        ),
        Divider(
          height: 0,
          color: Colors.white70,
        )
        ],));
      },
    )
    
  ],
)
    ),
    ) ; 
  }

}            
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;
  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: Color(0xff25ced1),
      child: _tabBar,

    );
  }

  @override

  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
   return false;

  }

}

class PostData{
  String image;
  String name;
  int likes;
  int comments;
  PostData(this.image,this.name,this.likes,this.comments);
}