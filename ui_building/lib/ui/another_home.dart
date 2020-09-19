import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnotherHome extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:Icon(Icons.home),
          onPressed: (){
            print("Hello World");
          },
        ),
        title: Text("Another Home"),
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.phone),
            onPressed: (){
              print("This is phone");
            },
          ),
          IconButton(
            icon:Icon(Icons.more_vert),
            onPressed: (){
              print("This is More_Vert");
            },
          )
        ],
        //SafeArea --> calculate for dead pixels
        flexibleSpace: SafeArea(
          child: Icon(
            Icons.photo_camera,
            size:75.0,
            color: Colors.white70,
          ),
        ),
        bottom: PreferredSize(
          child: Container(
            color:Colors.lightGreen.shade200,
            height: 50.0,
            width: double.infinity,
            child: Center(
              child: Text("Bottom"),
            ),
          ),
        ),
      ),
      body: Center(
        child: Text("Hello Another Home"),
      ),
    );
  }
}