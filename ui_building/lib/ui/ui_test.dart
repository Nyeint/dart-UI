import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:ui_building/ui/card_detail.dart';

class UiTest extends StatefulWidget {
  @override
  _UiTest createState() => _UiTest();
}

class _UiTest extends State<UiTest> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFEFEFEF),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {

          },
        ),
//        actions: <Widget>[
//          IconButton(
//            icon: Icon(Icons.list),
//            onPressed: () {
//
//            },
//          )
//        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: Container(
            width: double.infinity,
            height: 120.0,
            padding: EdgeInsets.all(7.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Your Wallet",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "\$1,750.00",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                    ),
                    Container(
                      width: 90.0,
                      height: 40.0,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.keyboard_arrow_up,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                          ),
                          Text(
                            "15%",
                            style: TextStyle(
                                color: Colors.white,fontSize: 15
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    body: SingleChildScrollView(
    child: Column(
//      mainAxisAlignment: MainAxisAlignment.spaceAround,
//    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      Card(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
//            color: Colors.blue,
                  width: 40.0,
                  height: 40.0,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text("80"),
                ),
                Container(
                  width: 50.0,
                  height: 30.0,
                  padding: EdgeInsets.all(30.0),
                ),
                Column(
                  children: <Widget>[
                    Text("Good Financial",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    Text("Your financial condition is good",style: TextStyle(color: Colors.black),),
                  ],
                ),

              ],
            ),
            Divider(),
            Text("View Statistic >",style: TextStyle(color: Colors.blue),)
          ],
        ),
      ),
      Row(
        children: <Widget>[
          Text("Detail Information",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.right,)
        ],
      ),
      Row(
        children: <Widget>[
          Card(
            margin: EdgeInsets.fromLTRB(6, 20.0, 0, 0),
            color: Colors.white,
              child: new InkWell(
                onTap: (){
//                print("Hello");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>CardDetail()),
                  );
                },
                child: Container(
                  width: width/2.15,
                  height: 70.0,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(Icons.ac_unit,color: Colors.red,),
                      Text("Send Money"),
                      Text("\$80.50")
                    ],
                  ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(6, 20.0, 0, 0),
            color: Colors.white,
              child: new InkWell(
                onTap: (){
//                print("Hello");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>CardDetail()),
                  );
                },
                child: Container(
                  width: width/2.15,
                  height: 70.0,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(Icons.account_balance,color: Colors.blue,),
                      Text("Account Balance"),
                      Text("\$150.15")
                    ],
                  ),
              ),
            ),
          ),
        ],
      ),
      Row(
        children: <Widget>[
              Card(
                margin: EdgeInsets.fromLTRB(6, 20.0, 0, 0),
                color: Colors.white,
                  child: new InkWell(
                    onTap: (){
//                print("Hello");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>CardDetail()),
                      );
                    },
                    child: Container(
                      width: width/2.15,
                      height: 70.0,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(Icons.add_circle,color: Colors.pink,),
                          Text("Top Up"),
                          Text("\$60.32")
                        ],
                      ),
                    ),
                  ),
              ),
          Card(
            margin: EdgeInsets.fromLTRB(6, 20.0, 0, 0),
            color: Colors.white,
            child: new InkWell(
              onTap: (){
//                print("Hello");
              Navigator.push(
                context,
                  MaterialPageRoute(builder: (context)=>CardDetail()),
              );
              },
              child: Container(
                width: width/2.15,
                height: 70.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(Icons.call_made,color: Colors.purple,),
                    Text("Request Money"),
                    Text("\$90.20")
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      Row(

        children: <Widget>[
          Card(
            margin: EdgeInsets.fromLTRB(6, 20.0, 0, 0),
            color: Colors.white,
            child: new InkWell(
              onTap: (){
//                print("Hello");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>CardDetail()),
                );
              },
              child: Container(
                width: width/2.15,
                height: 70.0,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(Icons.account_balance,color: Colors.amberAccent,),
                    Text("Maintainance"),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(6, 20.0, 0, 0),
            color: Colors.white,
            child: new InkWell(
              onTap: (){
//                print("Hello");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>CardDetail()),
                );
              },
              child: Container(
                width: width/2.15,
                height: 70.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(Icons.autorenew,color: Colors.teal,),
                    Text("Fast Transfer"),
                  ],
                ),
              ),
            ),
          ),
        ],
      )
    ],
    ),

    )
    );
  }
}