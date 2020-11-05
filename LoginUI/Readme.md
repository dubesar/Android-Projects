* Example-1

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyWidget(),
    ),
  );
}

class MyWidget extends StatelessWidget {
  Widget _buildLogin() => Container(
    margin: const EdgeInsets.all(30.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Username',
          ),
        ),
        SizedBox(height: 30.0,),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
          ),
        ),
        SizedBox(height: 30.0,),
        FlatButton(
          color: Colors.blue[500],
          textColor: Colors.white,
          disabledColor: Colors.grey,
          disabledTextColor: Colors.black,
          padding: EdgeInsets.all(20.0),
          splashColor: Colors.blueAccent,
          onPressed: () {
            /*...*/
          },
          child: Text(
            "Login",
            style: TextStyle(fontSize: 20.0),
          ),
        )
      ]
    ),  
   );

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Center(
          child: _buildLogin(),
        ),
      ),
    );
  }
}
```
