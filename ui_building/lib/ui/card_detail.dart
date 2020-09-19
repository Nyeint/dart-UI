import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_building/ui/ui_test.dart';

class CardDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double fontSize=width/22;
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
//        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.keyboard_backspace),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>UiTest()),
            );
          },
        ),
      ),
      body: Center(
        child: Card(
          color: Colors.white,
          child: Container(
            width:width/1.3,
            height: height/1.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0)
            ),
            child: Column(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top:50.0),
                ),
                Icon(Icons.ac_unit,color: Colors.red,size: width/7),
                Padding(
                  padding: EdgeInsets.only(top:15.0),
                ),
                Text("Sent successfully to David",style: TextStyle(fontSize:fontSize),),
                Padding(
                  padding: EdgeInsets.only(top:10.0),
                ),
                Text("\$50.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width/17,color: Colors.blue),),
                Padding(
                  padding: EdgeInsets.only(top:30.0),
                ),
                Row(
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                    ),
                    Icon(Icons.account_circle,size:width/8),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Column(
                      children: <Widget>[
                        Text("Yar Zar Win Soe",style: TextStyle(fontWeight: FontWeight.bold,fontSize: fontSize),),
                        Text("yarzarwinsoe@gmail.com",style: TextStyle(fontSize:fontSize)),
                      ],
                    )
                  ],
                ),
                Divider(),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Text("Transaction done on January 10,2020",style: TextStyle(fontSize:fontSize)),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                Text("Your reference number is 00214648",style: TextStyle(fontSize:fontSize)),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Container(
                  width: 220.0,
                  height: 30.0,
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      colors: [
                        Colors.red,
                        Colors.black
                      ]
                    ),
                      borderRadius: BorderRadius.circular(100.0)
                  ),
                  child:
                  Text("Continue",textAlign: TextAlign.center,style: TextStyle(fontSize: fontSize,color: Colors.white),),
                )
              ],
            ),
          ),

        )
      ),
    );
  }
}