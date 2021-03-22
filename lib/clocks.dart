import 'dart:async';
import 'package:clock_app/clockNumbers.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RightClock extends StatefulWidget {
  @override
  _RightClockState createState() => _RightClockState();
}

class _RightClockState extends State<RightClock> {
  @override
  Widget build(BuildContext context) {
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
    return Stack(
      fit: StackFit.expand,
      children: [
        FractionalTranslation(
          translation: Offset(0.5, 0),
          child: Align(
            alignment: Alignment.center,
            child: RotationTransition(
              turns: new AlwaysStoppedAnimation((-degreehour-90) / 360),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width*0.5,
                backgroundColor: Color(0xffcf404e),
                child: Stack(
                  children: [
                    ClockNumbers.NumberDesign1('3',false,0,90,degreehour,Colors.white,8,40),
                    ClockNumbers.NumberDesign1('2',false,30,60,degreehour,Colors.white,8,40),
                    ClockNumbers.NumberDesign1('1',false,60,30,degreehour,Colors.white,8,40),
                    ClockNumbers.NumberDesign1('12',false,90,0,degreehour,Colors.white,8,40),
                    ClockNumbers.NumberDesign1('11',false,120,-30,degreehour,Colors.white,8,40),
                    ClockNumbers.NumberDesign1('10',false,150,-60,degreehour,Colors.white,8,40),
                    ClockNumbers.NumberDesign1('9',false,180,-90,degreehour,Colors.white,8,40),
                    ClockNumbers.NumberDesign1('8',false,210,-120,degreehour,Colors.white,8,40),
                    ClockNumbers.NumberDesign1('7',false,240,-150,degreehour,Colors.white,8,40),
                    ClockNumbers.NumberDesign1('6',false,270,-180,degreehour,Colors.white,8,40),
                    ClockNumbers.NumberDesign1('5',false,300,-210,degreehour,Colors.white,8,40),
                    ClockNumbers.NumberDesign1('4',false,330,-240,degreehour,Colors.white,8,40),
                  ],
                ),
              ),
            ),
          ),
        ),
        FractionalTranslation(
          translation: Offset(0.5, 0),
          child: Align(
            alignment: Alignment.center,
            child: RotationTransition(
              turns: new AlwaysStoppedAnimation((-degreemin-90) / 360),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width*0.35,
                backgroundColor: Color(0xff46413C),
                child: Stack(
                  children: [
                    ClockNumbers.NumberDesign1('15',false,0,90,degreemin,Colors.white,8,30),
                    ClockNumbers.NumberDesign1('10',false,30,60,degreemin,Colors.white,8,30),
                    ClockNumbers.NumberDesign1('5',false,60,30,degreemin,Colors.white,8,30),
                    ClockNumbers.NumberDesign1('00',false,90,0,degreemin,Colors.white,8,30),
                    ClockNumbers.NumberDesign1('55',false,120,-30,degreemin,Colors.white,8,30),
                    ClockNumbers.NumberDesign1('50',false,150,-60,degreemin,Colors.white,8,30),
                    ClockNumbers.NumberDesign1('45',false,180,-90,degreemin,Colors.white,8,30),
                    ClockNumbers.NumberDesign1('40',false,210,-120,degreemin,Colors.white,8,30),
                    ClockNumbers.NumberDesign1('35',false,240,-150,degreemin,Colors.white,8,30),
                    ClockNumbers.NumberDesign1('30',false,270,-180,degreemin,Colors.white,8,30),
                    ClockNumbers.NumberDesign1('25',false,300,-210,degreemin,Colors.white,8,30),
                    ClockNumbers.NumberDesign1('20',false,330,-240,degreemin,Colors.white,8,30),
                  ],
                ),
              ),
            ),
          ),
        ),
        FractionalTranslation(
          translation: Offset(0.5, 0),
          child: Align(
            alignment: Alignment.center,
            child: RotationTransition(
              turns: new AlwaysStoppedAnimation((-degreesecond-90) / 360),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width*0.2,
                backgroundColor: Color(0xffb03b46),
                child: Stack(
                  children: [
                    ClockNumbers.NumberDesign1('15',false,0,90,degreesecond,Colors.white,8,20),
                    ClockNumbers.NumberDesign1('10',false,30,60,degreesecond,Colors.white,8,20),
                    ClockNumbers.NumberDesign1('5',false,60,30,degreesecond,Colors.white,8,20),
                    ClockNumbers.NumberDesign1('60',false,90,0,degreesecond,Colors.white,8,20),
                    ClockNumbers.NumberDesign1('55',false,120,-30,degreesecond,Colors.white,8,20),
                    ClockNumbers.NumberDesign1('50',false,150,-60,degreesecond,Colors.white,8,20),
                    ClockNumbers.NumberDesign1('45',false,180,-90,degreesecond,Colors.white,8,20),
                    ClockNumbers.NumberDesign1('40',false,210,-120,degreesecond,Colors.white,8,20),
                    ClockNumbers.NumberDesign1('35',false,240,-150,degreesecond,Colors.white,8,20),
                    ClockNumbers.NumberDesign1('30',false,270,-180,degreesecond,Colors.white,8,20),
                    ClockNumbers.NumberDesign1('25',false,300,-210,degreesecond,Colors.white,8,20),
                    ClockNumbers.NumberDesign1('20',false,330,-240,degreesecond,Colors.white,8,20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class LeftClock extends StatefulWidget {
  @override
  _LeftClockState createState() => _LeftClockState();
}

class _LeftClockState extends State<LeftClock> {
  @override
  Widget build(BuildContext context) {
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
    return Stack(
      fit: StackFit.expand,
      children: [
        FractionalTranslation(
          translation: Offset(0.5, 0),
          child: Align(
            alignment: Alignment.center,
            child: RotationTransition(
              turns: new AlwaysStoppedAnimation((-degreehour-90) / 360),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width*0.5,
                backgroundColor: Color(0xffcf404e),
                child: Stack(
                  children: [
                    ClockNumbers.NumberDesign1('3',false,0,90,degreehour,Colors.white,35,25),
                    ClockNumbers.NumberDesign1('2',false,30,60,degreehour,Colors.white,35,25),
                    ClockNumbers.NumberDesign1('1',false,60,30,degreehour,Colors.white,35,25),
                    ClockNumbers.NumberDesign1('12',false,90,0,degreehour,Colors.white,35,25),
                    ClockNumbers.NumberDesign1('11',false,120,-30,degreehour,Colors.white,35,25),
                    ClockNumbers.NumberDesign1('10',false,150,-60,degreehour,Colors.white,35,25),
                    ClockNumbers.NumberDesign1('9',false,180,-90,degreehour,Colors.white,35,25),
                    ClockNumbers.NumberDesign1('8',false,210,-120,degreehour,Colors.white,35,25),
                    ClockNumbers.NumberDesign1('7',false,240,-150,degreehour,Colors.white,35,25),
                    ClockNumbers.NumberDesign1('6',false,270,-180,degreehour,Colors.white,35,25),
                    ClockNumbers.NumberDesign1('5',false,300,-210,degreehour,Colors.white,35,25),
                    ClockNumbers.NumberDesign1('4',false,330,-240,degreehour,Colors.white,35,25),
                  ],
                ),
              ),
            ),
          ),
        ),
        FractionalTranslation(
          translation: Offset(0.5, 0),
          child: Align(
            alignment: Alignment.center,
            child: RotationTransition(
              turns: new AlwaysStoppedAnimation((-degreemin-90) / 360),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width*0.38,
                backgroundColor: Color(0xffcf404e),
                child: Stack(
                  children: [
                    ClockNumbers.NumberDesign1('15',false,0,90,degreemin,Colors.white,40,20),
                    ClockNumbers.NumberDesign1('10',false,30,60,degreemin,Colors.white,40,20),
                    ClockNumbers.NumberDesign1('5',false,60,30,degreemin,Colors.white,40,20),
                    ClockNumbers.NumberDesign1('00',false,90,0,degreemin,Colors.white,40,20),
                    ClockNumbers.NumberDesign1('55',false,120,-30,degreemin,Colors.white,40,20),
                    ClockNumbers.NumberDesign1('50',false,150,-60,degreemin,Colors.white,40,20),
                    ClockNumbers.NumberDesign1('45',false,180,-90,degreemin,Colors.white,40,20),
                    ClockNumbers.NumberDesign1('40',false,210,-120,degreemin,Colors.white,40,20),
                    ClockNumbers.NumberDesign1('35',false,240,-150,degreemin,Colors.white,40,20),
                    ClockNumbers.NumberDesign1('30',false,270,-180,degreemin,Colors.white,40,20),
                    ClockNumbers.NumberDesign1('25',false,300,-210,degreemin,Colors.white,40,20),
                    ClockNumbers.NumberDesign1('20',false,330,-240,degreemin,Colors.white,40,20),
                  ],
                ),
              ),
            ),
          ),
        ),
        FractionalTranslation(
          translation: Offset(0.5, 0),
          child: Align(
            alignment: Alignment.center,
            child: RotationTransition(
              turns: new AlwaysStoppedAnimation((-degreesecond-90) / 360),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width*0.25,
                backgroundColor: Color(0xffcf404e),
                child: Stack(
                  children: [
                    ClockNumbers.NumberDesign1('15',false,0,90,degreesecond,Colors.white,50,12),
                    ClockNumbers.NumberDesign1('10',false,30,60,degreesecond,Colors.white,50,12),
                    ClockNumbers.NumberDesign1('5',false,60,30,degreesecond,Colors.white,50,12),
                    ClockNumbers.NumberDesign1('60',false,90,0,degreesecond,Colors.white,50,12),
                    ClockNumbers.NumberDesign1('55',false,120,-30,degreesecond,Colors.white,50,12),
                    ClockNumbers.NumberDesign1('50',false,150,-60,degreesecond,Colors.white,50,12),
                    ClockNumbers.NumberDesign1('45',false,180,-90,degreesecond,Colors.white,50,12),
                    ClockNumbers.NumberDesign1('40',false,210,-120,degreesecond,Colors.white,50,12),
                    ClockNumbers.NumberDesign1('35',false,240,-150,degreesecond,Colors.white,50,12),
                    ClockNumbers.NumberDesign1('30',false,270,-180,degreesecond,Colors.white,50,12),
                    ClockNumbers.NumberDesign1('25',false,300,-210,degreesecond,Colors.white,50,12),
                    ClockNumbers.NumberDesign1('20',false,330,-240,degreesecond,Colors.white,50,12),
                  ],
                ),
              ),
            ),
          ),
        ),

        FractionalTranslation(
          translation: Offset(0.5, 0),
          child: Align(
            alignment: Alignment.center,
            child: RotationTransition(
              turns: new AlwaysStoppedAnimation((-degreehour-90) / 360),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width*0.5,
                backgroundColor: Colors.transparent,
                child: Stack(
                  children: [
                    ClockNumbers.NumberLine(context,false,0,90,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,30,60,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,60,30,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,90,0,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,120,-30,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,150,-60,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,180,-90,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,210,-120,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,240,-150,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,270,-180,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,300,-210,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,330,-240,degreehour,Colors.white,15),
                  ],
                ),
              ),
            ),
          ),
        ),
        FractionalTranslation(
          translation: Offset(0.5, 0),
          child: Align(
            alignment: Alignment.center,
            child: RotationTransition(
              turns: new AlwaysStoppedAnimation((-degreemin-90) / 360),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width*0.38,
                backgroundColor: Colors.transparent,
                child: Stack(
                  children: [
                    ClockNumbers.NumberLine(context,false,0,90,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,6,84,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,12,78,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,18,72,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,24,66,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,30,60,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,36,54,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,42,48,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,48,42,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,54,36,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,60,30,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,66,24,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,72,18,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,78,12,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,84,6,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,90,0,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,96,-6,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,102,-12,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,108,-18,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,114,-24,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,120,-30,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,126,-36,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,132,-42,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,138,-48,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,144,-54,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,150,-60,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,156,-66,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,162,-72,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,168,-78,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,174,-84,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,180,-90,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,186,-96,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,192,-102,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,198,-108,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,204,-114,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,210,-120,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,216,-126,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,222,-132,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,228,-138,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,234,-144,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,240,-150,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,246,-156,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,252,-162,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,258,-168,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,264,-174,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,270,-180,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,276,-186,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,282,-192,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,288,-198,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,294,-204,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,300,-210,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,306,-216,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,312,-222,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,318,-228,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,324,-234,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,330,-240,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,336,-246,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,342,-252,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,348,-258,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,354,-264,degreehour,Colors.white,7),
                  ],
                ),
              ),
            ),
          ),
        ),
        FractionalTranslation(
          translation: Offset(0.5, 0),
          child: Align(
            alignment: Alignment.center,
            child: RotationTransition(
              turns: new AlwaysStoppedAnimation((-degreesecond-90) / 360),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width*0.25,
                backgroundColor: Colors.transparent,
                child: Stack(
                  children: [
                    ClockNumbers.NumberLine(context,false,0,90,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,6,84,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,12,78,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,18,72,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,24,66,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,30,60,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,36,54,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,42,48,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,48,42,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,54,36,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,60,30,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,66,24,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,72,18,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,78,12,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,84,6,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,90,0,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,96,-6,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,102,-12,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,108,-18,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,114,-24,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,120,-30,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,126,-36,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,132,-42,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,138,-48,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,144,-54,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,150,-60,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,156,-66,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,162,-72,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,168,-78,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,174,-84,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,180,-90,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,186,-96,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,192,-102,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,198,-108,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,204,-114,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,210,-120,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,216,-126,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,222,-132,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,228,-138,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,234,-144,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,240,-150,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,246,-156,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,252,-162,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,258,-168,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,264,-174,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,270,-180,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,276,-186,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,282,-192,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,288,-198,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,294,-204,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,300,-210,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,306,-216,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,312,-222,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,318,-228,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,324,-234,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,330,-240,degreehour,Colors.white,15),
                    ClockNumbers.NumberLine(context,false,336,-246,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,342,-252,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,348,-258,degreehour,Colors.white,7),
                    ClockNumbers.NumberLine(context,false,354,-264,degreehour,Colors.white,7),
                  ],
                ),
              ),
            ),
          ),
        ),

        FractionalTranslation(
          translation: Offset(0.5, 0),
          child: Align(
            alignment: Alignment.center,
            child: RotationTransition(
              turns: new AlwaysStoppedAnimation(-90 / 360),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width*0.5,
                backgroundColor: Colors.transparent,
                child: Stack(
                  children: [
                    ClockNumbers.Arrow(-210,Colors.white,18),
                  ],
                ),
              ),
            ),
          ),
        ),
        FractionalTranslation(
          translation: Offset(0.5, 0),
          child: Align(
            alignment: Alignment.center,
            child: RotationTransition(
              turns: new AlwaysStoppedAnimation(-90 / 360),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width*0.38,
                backgroundColor: Colors.transparent,
                child: Stack(
                  children: [
                    ClockNumbers.Arrow(-210,Colors.white,14),
                  ],
                ),
              ),
            ),
          ),
        ),
        FractionalTranslation(
          translation: Offset(0.5, 0),
          child: Align(
            alignment: Alignment.center,
            child: RotationTransition(
              turns: new AlwaysStoppedAnimation(-90 / 360),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width*0.25,
                backgroundColor: Colors.transparent,
                child: Stack(
                  children: [
                    ClockNumbers.Arrow(-210,Colors.white,12),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

