import 'package:flutter/material.dart';
import 'dart:async';

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
  
  int _timerSecond;
  int _timerMin;
  bool _isButtonDisabled;
  bool _isResetButtonClicked;
  bool _isStopTimerClicked;
  @override
  void initState() {
    super.initState();
    _isButtonDisabled = false;
    _isResetButtonClicked = false;
    _isStopTimerClicked = false;
    _timerSecond = _timerSecond ?? 0;
    _timerMin = _timerMin ?? 25;
  }
  
//   Future.delayed(const Duration(milliseconds: 500), () {

//     setState(() {
//       if(_timerSecond > 0){
//           _timerSecond--;
//         }
//         else if(_timerSecond == 0){
//           if(_timerMin > 0){
//             _timerMin--;
//             _timerSecond = 59;
//           }
//         }
//     });
//   });

  void _startTimer() async {
    if(_isResetButtonClicked){
        _resetTimer();
        _isButtonDisabled = false;
        _isResetButtonClicked = false;
     }
    while(_timerMin>0 || _timerSecond>0){
      if(_isResetButtonClicked){
        _resetTimer();
        _isButtonDisabled = false;
        _isResetButtonClicked = false;
      }
      if(_isStopTimerClicked){
        _isStopTimerClicked = false;
        _isButtonDisabled = false;
        break;
      }
      
      await Future.delayed(Duration(seconds: 1)).then((_) {
      setState(() {
       _isButtonDisabled = true;
       if(_timerSecond > 0){
          _timerSecond--;
        }
        else if(_timerSecond == 0){
          if(_timerMin > 0){
            _timerMin--;
            _timerSecond = 59;
          }
        }
      });
     });
    }
  }
  
  void _resetTimer() {
    _isResetButtonClicked = true;
    setState((){
      _timerSecond = 0;
      _timerMin = 25;
    });
    _stopTimer();
  }
  
  void _stopTimer() {
    _isStopTimerClicked = true;
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
            _timerMin.toString().padLeft(2,"0") + ':' + _timerSecond.toString().padRight(2,"0"),
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [  
            IconButton(
            icon: Icon(Icons.play_arrow),
            onPressed: _isButtonDisabled ? null : _startTimer,
            iconSize: 32,
            padding: EdgeInsets.all(20),
           ),
          IconButton(
            icon: Icon(Icons.stop),
            onPressed: _stopTimer,
            iconSize: 32,
            padding: EdgeInsets.all(20),
          ),
          IconButton(
            icon: Icon(Icons.loop),
            onPressed: _resetTimer,
            iconSize: 32,
            padding: EdgeInsets.all(20),
          ),
         ]
        ),
      ],
    );
  }
}
