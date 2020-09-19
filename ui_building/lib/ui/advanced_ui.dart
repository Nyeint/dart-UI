import 'package:flutter/material.dart';

class AdvancedUI extends StatefulWidget {
  @override
  _AdvancedUI createState() => _AdvancedUI();
}

class _AdvancedUI extends State<AdvancedUI>  {
  var myColor = Colors.red;
  var anoColor = Colors.yellow;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
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
            const _TitleWidget(),
            FirstWidget(anoColor: anoColor),
            _buildContainer(color: myColor),
            _buildContainer(color: anoColor)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {

          setState(() {
            myColor = Colors.green;
            anoColor = Colors.orange;
          });

        },
      ),
    );
  }

  Container _buildContainer({Color color}) {
    print("redraw");
    return Container(
      width: double.infinity,
      height: 200.0,
      color: color,
    );
  }
}

class FirstWidget extends StatelessWidget {
  const FirstWidget({
    Key key,
    @required this.anoColor,
  }) : super(key: key);

  final MaterialColor anoColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150.0,
      color: anoColor,
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("title redraw");
    return Container(
      width: double.infinity,
      height: 100.0,
      color: Colors.black,
      child: Center(
        child: Text(
          "Hello Title",
          style: TextStyle(
              color: Colors.white,
              fontSize: 40.0
          ),
        ),
      ),
    );
  }
}