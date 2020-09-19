import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyContainer extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("My Container"),
      ),
      body: Card(
      child:Container(
        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration(
//          color: Colors.amberAccent,
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.green,
            Colors.blue
          ]
        ),
          /**** with circle shape, borderRadius must be deleted.  *****/
//          borderRadius: BorderRadius.only(
//            topLeft: Radius.circular(100.0),
//            bottomRight: Radius.circular(50.0)
//          )
        ),
        child: Center(
          child: Text('Hello ContainerHello Container Hello ContainerHello Container Hello ContainerHello Container Hello ContainerHello Container Hello ContainerHello Container ',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.deepOrangeAccent,
            decorationStyle: TextDecorationStyle.dotted,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold
          ),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      ),
    );
  }
}