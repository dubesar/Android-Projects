import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  
  TextEditingController _controller;
  int _count;
  @override
  void initState() {
    super.initState();
    _controller = new TextEditingController();
    _count = 0;
  }
  
  void _moveForward() {
    setState(() {
      if(_count == 0) _count = (int.parse(_controller.text)+1);
      else _count++;
    });
  }
  void _moveBack() {
    setState(() {
      if(_count == 0) _count = (int.parse(_controller.text)-1);
      _count--;
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(              
          width: 200.0,
          child: TextField(   
            controller: _controller,
            style: TextStyle(
              fontSize: 24.0,
              height: 2.0,
              color: Colors.black                  
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Count',
            ),
          )
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.fast_rewind),
              onPressed: _moveBack,
              iconSize: 32,
              padding: EdgeInsets.all(20),
            ),
            Text(
              _count.toString() == _controller.text ? _controller.text : _count.toString(),
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            IconButton(
              icon: Icon(Icons.fast_forward),
              onPressed: _moveForward,
              iconSize: 32,
              padding: EdgeInsets.all(20),
            ),
          ],
        ),
       ],
     );
  }
}
