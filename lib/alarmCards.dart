import 'package:flutter/material.dart';

class alarmCards extends StatefulWidget {
  String description;
  String time;
  String image;
  alarmCards({this.description,this.time,this.image});
  @override
  _alarmCardsState createState() => _alarmCardsState();
}

class _alarmCardsState extends State<alarmCards> {
  bool selectedMo=false;
  bool selectedTu=false;
  bool selectedWe=false;
  bool selectedTh=false;
  bool selectedFr=false;
  bool selectedSa=false;
  bool selectedSu=false;
  bool selectedAlarm=false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0),
      child: Card(
        elevation: 10,
        child: Column(
          children: [
            widget.image != null?FittedBox(
              fit: BoxFit.fill,
              child: Image(image: NetworkImage(widget.image),),
            ):Text(''),
            Row(
              children: [Padding(
                padding: const EdgeInsets.only(left:16.0,top: 12),
                child: Text(widget.description,style: TextStyle(color: Colors.black87,fontSize: 14,fontWeight: FontWeight.w500),),
              )],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:16.0,top: 2),
                  child: Text(widget.time,style: TextStyle(color: Colors.black87,fontSize: 26,fontWeight: FontWeight.w900),),
                ),
                Switch(
                  onChanged:  (value) {
                    setState(() {
                      selectedAlarm = value;
                    });
                  },
                  value: selectedAlarm,
                  activeColor: Color(0xffAB0B08),
                  activeTrackColor: Color(0xffF75752),
                  inactiveThumbColor: Colors.black87,
                  inactiveTrackColor: Colors.grey,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2,bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        selectedMo =!selectedMo;
                      });
                    },
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                        decoration: BoxDecoration(
                            color: selectedMo?Color(0xffDD3935):Color(0xffDD3935).withOpacity(0.3),
                            borderRadius: BorderRadius.all(Radius.circular(30))
                        ),
                        child: Text(
                          'Mo',
                          style: TextStyle(color: selectedMo?Colors.white:Color(0xffC52420),fontWeight: selectedMo?FontWeight.w800:FontWeight.w400),
                        ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        selectedTu =!selectedTu;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                      decoration: BoxDecoration(
                          color: selectedTu?Color(0xffDD3935):Color(0xffDD3935).withOpacity(0.3),
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Text(
                        'Tu',
                        style: TextStyle(color: selectedTu?Colors.white:Color(0xffC52420),fontWeight: selectedTu?FontWeight.w800:FontWeight.w400),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        selectedWe =!selectedWe;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                      decoration: BoxDecoration(
                          color: selectedWe?Color(0xffDD3935):Color(0xffDD3935).withOpacity(0.3),
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Text(
                        'We',
                        style: TextStyle(color: selectedWe?Colors.white:Color(0xffC52420),fontWeight: selectedWe?FontWeight.w800:FontWeight.w400),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        selectedTh =!selectedTh;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                      decoration: BoxDecoration(
                          color: selectedTh?Color(0xffDD3935):Color(0xffDD3935).withOpacity(0.3),
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Text(
                        'Th',
                        style: TextStyle(color: selectedTh?Colors.white:Color(0xffC52420),fontWeight: selectedTh?FontWeight.w800:FontWeight.w400),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        selectedFr =!selectedFr;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                      decoration: BoxDecoration(
                          color: selectedFr?Color(0xffDD3935):Color(0xffDD3935).withOpacity(0.3),
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Text(
                        'Fr',
                        style: TextStyle(color: selectedFr?Colors.white:Color(0xffC52420),fontWeight: selectedFr?FontWeight.w800:FontWeight.w400),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        selectedSa =!selectedSa;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                      decoration: BoxDecoration(
                          color: selectedSa?Color(0xffDD3935):Color(0xffDD3935).withOpacity(0.3),
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Text(
                        'Sa',
                        style: TextStyle(color: selectedSa?Colors.white:Color(0xffC52420),fontWeight: selectedSa?FontWeight.w800:FontWeight.w400),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        selectedSu =!selectedSu;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                      decoration: BoxDecoration(
                          color: selectedSu?Color(0xffDD3935):Color(0xffDD3935).withOpacity(0.3),
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Text(
                        'Su',
                        style: TextStyle(color: selectedSu?Colors.white:Color(0xffC52420),fontWeight: selectedSu?FontWeight.w800:FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
