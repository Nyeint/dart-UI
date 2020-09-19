import 'package:flutter/material.dart';

class AllInputWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Inputs"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              style: TextStyle(fontFamily: "MyanmarSabae"),
              decoration: InputDecoration(
                  icon: Icon(Icons.text_fields),
                hintText: "မြန်မာလိုရေးကြည့်တာပါ"
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              style: TextStyle(fontFamily: "MyanmarSabae"),
              decoration: InputDecoration(
                  hintText: "မြန်မာလိုရေးကြည့်တာပါ"
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              style: TextStyle(fontFamily: "MyanmarSabae"),
              decoration: InputDecoration(
                  labelText: "ဒါက ဒီလိုရှိတယ်",
                  hintText: "ဟိုက ဟိုလိုရှိတယ်"
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Place Holder",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green
                  )
                )
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Hello World",
                  hintText: "Place Holder",
                  border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                labelText: "Hello World",
                hintText: "Place Holder",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Hello World",
                hintText: "Place Holder11",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Hello World",
                hintText: "Place Holder",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0)
                ),
                prefixIcon: Icon(Icons.add_circle, color: Colors.green,),
                fillColor: Colors.blueGrey[100],
                filled: true
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Hello World",
                  hintText: "Place Holder",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  suffixIcon: Icon(Icons.add_circle, color: Colors.green,),
                  fillColor: Colors.blueGrey[100],
                  filled: true
              ),
            ),
          ),

          Container(
            padding: new EdgeInsets.only(top: 20),
            child: new TextField(
              maxLines: 3,
              decoration: new InputDecoration(
                hintText: ' Text Area',
                border: new OutlineInputBorder(),
              ),
            ),
          ),
          Container(
    padding: new EdgeInsets.only(top: 20),
    child: new TextField(
    maxLines: 4,
    decoration: new InputDecoration(
    labelText: 'MultiLine TextField',
    hintText: ' Text Area',
    border: new OutlineInputBorder(),
    ),
    ),
    ),
        ],
      )
    );
  }
}