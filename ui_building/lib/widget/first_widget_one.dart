import 'package:flutter/material.dart';

class FirstWidgetOne extends StatefulWidget {
  @override
  _FirstWidgetOneState createState() => _FirstWidgetOneState();
}

class _FirstWidgetOneState extends State<FirstWidgetOne> with SingleTickerProviderStateMixin {
  AnimationController _controller;

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
    return Container();
  }
}
