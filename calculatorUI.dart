import 'package:flutter/material.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator App",
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Calculator App"),
          centerTitle: true,
        ),
        body : new Container(
        padding: EdgeInsets.all(25),
        alignment: Alignment(0.0, 1.0),
        child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: new RaisedButton(onPressed: (){},child: Text("0"),),
              ),
              Container(
                child: new RaisedButton(onPressed: (){},child: Text("1")),
              ),
              Container(
                child: new RaisedButton(onPressed: (){},child: Text("2"),),
              ),
              Container(
                child: new RaisedButton(onPressed: (){},child: Text("+"),),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                child: new RaisedButton(onPressed: (){},child: Text("3"),),
              ),
              Container(
                child: new RaisedButton(onPressed: (){},child: Text("4"),),
              ),
              Container(
                child: new RaisedButton(onPressed: (){},child: Text("5"),),
              ),
              Container(
                child: new RaisedButton(onPressed: (){},child: Text("-"),),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                child: new RaisedButton(onPressed: (){},child: Text("6"),),
              ),
              Container(
                child: new RaisedButton(onPressed: (){},child: Text("7"),),
              ),
              Container(
                child: new RaisedButton(onPressed: (){},child: Text("8"),),
              ),
              Container(
                child: new RaisedButton(onPressed: (){},child: Text("*"),),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                child: new RaisedButton(onPressed: (){},child: Text("9"),),
              ),
              Container(
                child: new RaisedButton(onPressed: (){},child: Text("MC"),),
              ),
              Container(
                child: new RaisedButton(onPressed: (){},child: Text("C"),),
              ),
              Container(
                child: new RaisedButton(onPressed: (){},child: Text("/"),),
              ),
            ],
          )
        ],
      )
        ),
    );
  }
}

