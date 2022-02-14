import 'package:flutter/material.dart';

class TicketDisplay extends StatefulWidget {
  const TicketDisplay({Key? key}) : super(key: key);

  @override
  _TicketDisplayState createState() => _TicketDisplayState();
}

class _TicketDisplayState extends State<TicketDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF2b2c31),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 15.0,top: 40.0),
            width: MediaQuery.of(context).size.width,
            color: Color(0xffFF2b2c31),
            child: Text("You're \nconfirmed!", style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0,bottom: 10.0,top: 25.0),
            alignment: Alignment.centerLeft,
            child: Text('Return to London',style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold),),
            color: Color(0xffFF2b2c31),
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0,bottom: 30.0),
            alignment: Alignment.centerLeft,
            child: Text('Itinerary #872389476583',style: TextStyle(color: Colors.grey,fontSize: 10),),
            color: Color(0xffFF2b2c31),
          ),
          Container(
            color: Colors.black,
            margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 15.0),
            width: MediaQuery.of(context).size.width,
            height: 1.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0,bottom: 10.0),
            alignment: Alignment.centerLeft,
            child: Text('Flight to London',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),),
            color: Color(0xffFF2b2c31),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15.0),
                alignment: Alignment.centerLeft,
                child: Text('Wed, Dec 1',style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold),),
                color: Color(0xffFF2b2c31),
              ),
              Container(
                margin: EdgeInsets.only(right: 15.0),
                alignment: Alignment.centerLeft,
                child: Text('Thu, Dec 2',style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold),),
                color: Color(0xffFF2b2c31),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15.0,top: 7.0),
                alignment: Alignment.centerLeft,
                child: Text('Depart SIN',style: TextStyle(color: Colors.grey,fontSize: 10),),
                color: Color(0xffFF2b2c31),
              ),
              Icon(Icons.arrow_forward, size: 15, color: Colors.grey,),
              Container(
                margin: EdgeInsets.only(right: 15.0,top: 7.0),
                alignment: Alignment.centerLeft,
                child: Text('Arrive LHR',style: TextStyle(color: Colors.grey,fontSize: 10),),
                color: Color(0xffFF2b2c31),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15.0,top: 7.0),
                alignment: Alignment.centerLeft,
                child: Text('23:05',style: TextStyle(color: Colors.grey,fontSize: 10),),
                color: Color(0xffFF2b2c31),
              ),
              Container(
                margin: EdgeInsets.only(right: 15.0,top: 7.0),
                alignment: Alignment.centerLeft,
                child: Text('08:00',style: TextStyle(color: Colors.grey,fontSize: 10),),
                color: Color(0xffFF2b2c31),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0,top: 8.0),
            alignment: Alignment.centerLeft,
            child: Text('Air France . 1 traveller . 1 stop',style: TextStyle(color: Colors.grey,fontSize: 10),),
            color: Color(0xffFF2b2c31),
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0,bottom: 10.0,top: 23.0),
            alignment: Alignment.centerLeft,
            child: Text('Flight to Singapore',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),),
            color: Color(0xffFF2b2c31),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15.0),
                alignment: Alignment.centerLeft,
                child: Text('Thu, Dec 2',style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold),),
                color: Color(0xffFF2b2c31),
              ),
              Container(
                margin: EdgeInsets.only(right: 15.0),
                alignment: Alignment.centerLeft,
                child: Text('Fri, Dec 3',style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold),),
                color: Color(0xffFF2b2c31),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15.0,top: 7.0),
                alignment: Alignment.centerLeft,
                child: Text('Depart LR',style: TextStyle(color: Colors.grey,fontSize: 10),),
                color: Color(0xffFF2b2c31),
              ),
              Icon(Icons.arrow_forward, size: 15, color: Colors.grey,),
              Container(
                margin: EdgeInsets.only(right: 15.0,top: 7.0),
                alignment: Alignment.centerLeft,
                child: Text('Arrive SIN',style: TextStyle(color: Colors.grey,fontSize: 10),),
                color: Color(0xffFF2b2c31),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15.0,top: 7.0),
                alignment: Alignment.centerLeft,
                child: Text('17:05',style: TextStyle(color: Colors.grey,fontSize: 10),),
                color: Color(0xffFF2b2c31),
              ),
              Container(
                margin: EdgeInsets.only(right: 15.0,top: 7.0),
                alignment: Alignment.centerLeft,
                child: Text('16:20',style: TextStyle(color: Colors.grey,fontSize: 10),),
                color: Color(0xffFF2b2c31),
              ),
            ],
          ),
          Container(
            color: Colors.black,
            margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 15.0),
            width: MediaQuery.of(context).size.width,
            height: 1.0,
          ),
          Row(
            children: [
              Container(
                height: 10,
                width: 10,
                color: Color(0xffFF2b2c31),
              ),
              Icon(Icons.file_present, color: Color(0xffFFfeb648),size: 15.0,),
              Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Text('View price details',style: TextStyle(fontSize: 13.0,color: Color(0xffFFfeb648)),),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0,right: 15.0,top: 90.0),
            height: 40,
            alignment: Alignment.center,
            child: Text('View itinerary',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
            decoration: BoxDecoration(
              color: Color(0xffFFfeb648),
              borderRadius: BorderRadius.circular(17),
            ),
          ),
        ],
      ),
    );
  }
}
