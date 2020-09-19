import "package:flutter/material.dart";

class Testing extends StatefulWidget {
  @override
  _TestingState createState() => _TestingState();
}

class _TestingState extends State<Testing> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  var mycolor=Colors.red;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Advanced UI"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildContainer(color: mycolor)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            mycolor=Colors.green;
          });
        },
      ),
    );
  }

  Container _buildContainer({Color color}) {
    return Container(
            width: double.infinity,
            height: 200.0,
            color: color,
          );
  }
}
