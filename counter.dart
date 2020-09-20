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
  
  int _count;
  @override
  void initState() {
    super.initState();
    _count = 0;
  }
  
  void _moveForward() {
    setState(() {
      _count++;
    });
  }
  
  void _moveBack() {
    setState(() {
      _count--;
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Row(
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
            _count.toString(),
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
    );
  }
}
