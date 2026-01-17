import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(child: Quizpage()),
      ),
    );
  }
}

class Quizpage extends StatefulWidget {
  const Quizpage({super.key});

  @override
  _QuizpageState createState() {
    return _QuizpageState();
  }
}

class _QuizpageState extends State<Quizpage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Center(
              child: Text(
                'The questioins',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ),
        // Different way to design the buttons
        Expanded(
          child: Padding(
            padding: EdgeInsetsGeometry.all(15),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              onPressed: () {},
              child: Text(
                'True',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
        // Another way to design the buttons
        Expanded(
          child: Padding(
            padding: EdgeInsetsGeometry.all(15),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              child: Text(
                'True',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
