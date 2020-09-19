//import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:ui_building/ui/HomePage.dart';
//import 'package:ui_building/ui/advanced_ui.dart';
//import 'package:ui_building/ui/another_home.dart';
//import 'package:ui_building/ui/card_detail.dart';
//import 'package:ui_building/ui/my_container.dart';
//import 'package:ui_building/ui/my_position.dart';
//import 'package:ui_building/ui/testing.dart';
//import 'package:ui_building/ui/ui_test.dart';
//
//
////void main() => runApp(MyApp());
//void main(){
////  debugPaintSizeEnabled=true;
//  //to view detailed size of widgets by showing square boundary
//  runApp(MyApp());
//}
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: UiTest(),
//    );
//  }
//}


import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blue
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Decoration"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Container(
              width: double.infinity,
              height: 150.0,
//              color: Colors.blue,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.red,
                border: Border.all(
                  width: 2,
                  color: Colors.blue
                ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(0)
                  )
//                borderRadius: BorderRadius.only(topLeft: Radius.circular(5)),
//                borderRadius: BorderRadius.only(topRight: Radius.circular(20));
//                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30));
//                borderRadius: BorderRadius.only(bottomRight: Radius.circular(0));
              ),
            )
          ],
        ),
      ),
    );
  }
}