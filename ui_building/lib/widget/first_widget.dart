import 'package:flutter/material.dart';

class FirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Management"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildContainer()
          ],
        ),

      ),
    );
  }
  Container _buildContainer() {
    print("second redraw");
    return Container(
      width: double.infinity,
      height: 200.0,
      color: Colors.green,
    );
  }
}
