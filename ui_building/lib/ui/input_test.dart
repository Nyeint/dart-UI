import 'package:flutter/material.dart';

class InputTest extends StatefulWidget {
  @override
  _InputTestState createState() => _InputTestState();
}

class _InputTestState extends State<InputTest> {
  final _formKey=GlobalKey<FormState>();
  final _scaffoldKey=GlobalKey<ScaffoldState>();
  final _nameTextController=TextEditingController(text:"Mr.");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Input Test"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextFormField(
                    validator: (value){
                      if(value.length<5){
                        return "Add minimum 5 alphabets";
                      }
                      return
                          null; //it is ok
                    },
                    controller: _nameTextController,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  child: FlatButton(
                    child: Icon(Icons.adb),
                    onPressed: (){
                      if(_formKey.currentState.validate()){
                        print("It is OK");
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          final SnackBar=SnackBar(
            content: Text('Yay! A SnackBar!'),
            action:SnackBarAction(
              label: "Undo",
              onPressed: (){
                print("OK");
              },
            )
          );
          _scaffoldKey.currentState.showSnackBar(SnackBar);
        }
      ),
    );
  }
}
