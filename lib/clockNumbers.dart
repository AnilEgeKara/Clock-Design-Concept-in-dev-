import 'package:flutter/material.dart';

class ClockNumbers{
  static Widget NumberDesign1(
      String number,
      bool selfRotation,
      int selfRotationDegree,
      int locationDegree,
      int rotationDegree,
      Color numberColor,
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
          padding: const EdgeInsets.all(8.0),
          child: Text(number,style: TextStyle(fontSize: fontSize.toDouble(),fontWeight: FontWeight.bold,color: numberColor),),
        )
    )
    ),
  );
  }
}