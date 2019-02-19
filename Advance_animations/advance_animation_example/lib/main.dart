import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'dart:math';

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
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: _MyHomePageState(),
    );
  }
}



class _MyHomePageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
     body:new Container(
       child:Padding(
       padding: EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
       child: PhysicsBox(boxPosition: 0.5,),
     )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class PhysicsBox extends StatefulWidget {
  final boxPosition;
  PhysicsBox({this.boxPosition=0.0});


  @override
  BoxState createState() => BoxState();
  }
  
  class BoxState extends State<PhysicsBox>with TickerProviderStateMixin {
    double boxPosition;
    double boxPositionStart;
    Offset start;
    Offset point;
  AnimationController controller;
  ScrollSpringSimulation simulation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    boxPosition = widget.boxPosition;
    simulation = ScrollSpringSimulation(
      SpringDescription(
        mass: 1.0,
        damping: 1.0,
        stiffness: 1.0
      ), 
      0.0, 
      1.0, 
      0.0);

      controller = AnimationController(vsync: this)..addListener((){
        print('${simulation.x(controller.value)}');
      });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onPanStart: startDarg,
      onPanUpdate: onDrag,
      onPanEnd: endDarg,
      child: CustomPaint(
        painter: BoxPainter(
          color: Colors.blue  ,
          boxPosition: boxPosition,
          boxPositionStart: boxPositionStart ?? boxPosition,
          touchPoint: point,
        ),
        child: Container(),
      ),
    );
  }
  void startDarg(DragStartDetails details){
    start = (context.findRenderObject()as RenderBox).globalToLocal(details.globalPosition);
    boxPositionStart = boxPosition;

  }

  void onDrag(DragUpdateDetails details){
    setState(() {
            point = (context.findRenderObject()as RenderBox).globalToLocal(details.globalPosition);
          final dargVel = start.dy-point.dy;
          final normalDragVel = (dargVel/context.size.height).clamp(-1.0, 1.0);
          boxPosition = (boxPositionStart+normalDragVel).clamp(0.0, 1.0);
    });
  }
  void endDarg(DragEndDetails details){
    setState(() {
     start = null;
     point=null;
    boxPositionStart = null;
    });
  }

}

class BoxPainter extends CustomPainter{
  final double boxPosition;
  final double boxPositionStart;
  final Color color;
  final Offset touchPoint;
  final Paint boxPaint;
  final Paint dropPaint;

  BoxPainter({this.boxPosition = 0.0
  , this.boxPositionStart=0.0
  , this.color = Colors.grey
  , this.touchPoint
  }):boxPaint = Paint(),
  dropPaint = Paint(){
    boxPaint.color = this.color;
    boxPaint.style = PaintingStyle.fill;
    dropPaint.color = Colors.grey;
    dropPaint.style = PaintingStyle.fill;

  }


  @override
  void paint(Canvas canvas, Size size) {
    canvas.clipRect(Rect.fromLTWH(0.0, 0.0, size.width, size.height));
    final boxValueY = size.height - (size.height*boxPosition);
    final prevBoxvalueY = size.height - (size.height*boxPositionStart);
    final midPointY = ((boxValueY-prevBoxvalueY)*1.2+prevBoxvalueY);
    Point left,mid,right;
    left = Point(-100.0,prevBoxvalueY);
    right = Point(size.width+50.0,prevBoxvalueY);
    if(null != touchPoint){
      mid = Point(touchPoint.dx,touchPoint.dy);
    }else{
      mid = Point(size.width/2,midPointY);
    }

    final path = Path();
    path.moveTo(mid.x, mid.y);
    path.quadraticBezierTo(mid.x-100.0, mid.y, left.x, left.y);
    path.lineTo(0.0, size.height);
    path.moveTo(mid.x,mid.y);
    path.quadraticBezierTo(mid.x+100.0, mid.y, right.x, right.y);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();

    canvas.drawPath(path, boxPaint);
    canvas.drawCircle(Offset(right.x,right.y), 10.0, dropPaint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}
