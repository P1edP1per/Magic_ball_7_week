import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic_8_Ball',
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Ask Me Anything'),
        ),
        body:  Container(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}
class _BallState extends State<Ball> {
  int ballNumber  = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
            print('$ballNumber');
          });
        },
        child: Image(
          image: AssetImage('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
