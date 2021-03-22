import 'dart:async';
import 'dart:math' as math;
import 'package:clock_app/alarmCards.dart';
import 'package:clock_app/clockNumbers.dart';
import 'package:clock_app/clocks.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    var WIDTH = MediaQuery.of(context).size.width;
    Timer _everySecond;
    DateTime now = DateTime.now();
    _everySecond = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        now = DateTime.now();
      });
    });

    String hour = DateFormat('kk').format(now);
    String min = DateFormat('mm').format(now);
    String second = DateFormat('ss').format(now);
    var degreehour = int.parse(hour)*30;
    var degreemin = int.parse(min)*6;
    var degreesecond = int.parse(second)*6;

    return Scaffold(
      drawerScrimColor: Colors.black45,
      drawer: LeftClock(),
      endDrawer: RightClock(),
      body: Container(
        color: Color(0xffb03b46),
        height: MediaQuery.of(context).size.height,
        child: ListView(
          shrinkWrap: true,
          children: [
            CustomPaint(
              size: Size(WIDTH*1.2,(WIDTH*0.625).toDouble()),
              painter: TopPainter(),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:16.0),
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width*0.2,
                  backgroundColor: Color(0xffb03b46),
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width*0.18,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width*0.17,
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                    ),
                  ),
                ),
              ),
            ),
            alarmCards(description:'Wake me up memo',time:'10:30',),
            alarmCards(description:'Wake me up',time:'08:30',),
            alarmCards(description:'Take a break budy',time:'12:15',image: 'https://media.npr.org/assets/img/2013/02/26/dinner01_slide-3fe223f875768309fbe02165a865c9c09c969ad5.jpg',),
          ],
        ),
      ),
    );
  }
}

class TopPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path_0 = Path();
    path_0.moveTo(0,0);
    path_0.lineTo(size.width,0);
    path_0.lineTo(size.width,size.height*0.7000000);
    path_0.quadraticBezierTo(size.width*0.5000000,size.height*0.3000000,0,size.height*0.7000000);
    path_0.quadraticBezierTo(0,size.height*0.5250000,0,0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}



