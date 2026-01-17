import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Ask ME anything",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: MagicBall(),
      backgroundColor: Colors.blue,
    )
  ),
);

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int number = 1;
  void randomNumber(){
    setState(() {
      number = Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(onPressed: () {
                randomNumber();
              }, child: Image.asset("images/ball$number.png")),
          ),
        ],
      ),
    );
  }
}
