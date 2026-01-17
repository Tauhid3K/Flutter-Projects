import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('I am Poor'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        foregroundColor:  Colors.white,
      ),
      body: Center(
        child: Image(
            image: AssetImage('images/poor.jpeg')
        ),
      ),
    ),
   ),
  );
}
