import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClockNumbers{
  static Widget NumberDesign1(
      String number,
      bool selfRotation,
      int selfRotationDegree,
      int locationDegree,
      int rotationDegree,
      Color numberColor,
      int padding,
      int fontSize,
      ){
  return RotationTransition(
    turns: new AlwaysStoppedAnimation(locationDegree / 360),
    child: Align(
        alignment: Alignment.topCenter,child:
    RotationTransition(
        turns: new AlwaysStoppedAnimation(
            (selfRotation?(rotationDegree+(selfRotationDegree)):90) / 360),
        child: Padding(
          padding: EdgeInsets.only(left:padding.toDouble()),
          child: Text(number,style: TextStyle(fontSize: fontSize.toDouble(),fontWeight: FontWeight.bold,color: numberColor),),
        )
    )
    ),
  );
  }

  static Widget NumberLine(
      BuildContext context,
      bool selfRotation,
      double selfRotationDegree,
      double locationDegree,
      int rotationDegree,
      Color color,
      int size,
      ){
    return RotationTransition(
      turns: new AlwaysStoppedAnimation(locationDegree / 360),
      child: Align(
          alignment: Alignment.topCenter,child:
      RotationTransition(
          turns: new AlwaysStoppedAnimation(
              (selfRotation?(rotationDegree+(selfRotationDegree)):90) / 360),
          child: Container(
            margin: EdgeInsets.only(left: 16),
            height: 2,
            width: size.toDouble(),
            color: Colors.white,
          )
      )
      ),
    );
  }

  static Widget Arrow(
      double locationDegree,
      Color color,
      int size,
      ){
    return Align(
        alignment: Alignment.topCenter,child:
    RotationTransition(
        turns: new AlwaysStoppedAnimation(
            (90) / 360),
        child: FaIcon(
          FontAwesomeIcons.play,
          color: color,
          size: size.toDouble(),
        ),
    )
    );
  }
}