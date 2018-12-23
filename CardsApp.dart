import 'package:flutter/material.dart';

void main() => runApp(new Cards());

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "New Cards",
      home: CardsApp(),
    );
  }
}
class CardsApp extends StatefulWidget {
  @override
  _CardsAppState createState() => _CardsAppState();
}

class _CardsAppState extends State<CardsApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("MyApp"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(icon: Icon(Icons.menu), onPressed: null),
            IconButton(icon: Icon(Icons.search), onPressed: null)
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(onPressed: (){},child: Icon(Icons.person_add),backgroundColor: Colors.redAccent,),
      backgroundColor: Colors.grey,
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children : <Widget>[
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              width: 120.0,
              height: 150.0,
              child: const Card(child: Text('Hello World'),
              elevation: 10.0,color: Colors.redAccent,),
            ),
            SizedBox(
              width: 120.0,
              height: 150.0,
              child: const Card(child: Text('My World'),
              elevation: 10.0,color: Colors.redAccent,),
            ),
            SizedBox(
              width: 120.0,
              height: 150.0,
              child: const Card(child: Text('My World'),
                elevation: 10.0,color: Colors.redAccent,),
            ),
          ],
        ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                width: 120.0,
                height: 150.0,
                child: const Card(child: Text('My World'),
                  elevation: 10.0,color: Colors.redAccent,),
              ),SizedBox(
                width: 120.0,
                height: 150.0,
                child: const Card(child: Text('My World'),
                  elevation: 10.0,color: Colors.redAccent,),
              ),SizedBox(
                width: 120.0,
                height: 150.0,
                child: const Card(child: Text('My World'),
                  elevation: 10.0,color: Colors.redAccent,),
              ),
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                width: 120.0,
                height: 150.0,
                child: const Card(child: Text('My World'),
                  elevation: 10.0,color: Colors.redAccent,),
              ),SizedBox(
                width: 120.0,
                height: 150.0,
                child: const Card(child: Text('My World'),
                  elevation: 10.0,color: Colors.redAccent,),
              ),SizedBox(
                width: 120.0,
                height: 150.0,
                child: const Card(child: Text('My World'),
                  elevation: 10.0,color: Colors.redAccent,),
              ),
            ],
          )
      ],
      ),
    );
  }
}

