import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: Center(
        child: Container(
          color: Colors.black12,
          width: 250.0,
          height: 250.0,
//          decoration: BoxDecoration,        Test
          child:Stack(
            children: <Widget>[
              Card(
                color: Colors.blue,
                child: Container(
                  width: 100.0,
                  height: 100.0,
                ),
              ),
              Card(
                color: Colors.yellow,
                child: Container(
                  width: 70.0,
                  height: 70.0,
                ),
              ),
              Positioned(
                bottom: 0,
                right:0,
                child: Card(
                  color: Colors.green,
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                  ),
                ),
              )
            ],
          )
        ),
      )
    );
  }
}