import 'package:flutter/material.dart';

class MyPosition extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Position"),
      ),
      body: Column(
        /***** mainAxisAlignment--> to automatically align space between container widgets. Do not need to use Padding(...) *****/
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            width: 100.0,
            height: 100.0,
            color: Colors.red,
          ),
          Padding(
            padding: EdgeInsets.only(top:20.0),
          ),
          Container(
            width: 100.0,
            height: 100.0,
            color: Colors.green,
          ),
          Padding(
            padding: EdgeInsets.only(top:20.0),
          ),
          Container(
            width: 100.0,
            height: 100.0,
            color: Colors.blue,
          ),
          Padding(
            padding: EdgeInsets.only(top:20.0),
          )
        ],
      ),
    );
  }
}