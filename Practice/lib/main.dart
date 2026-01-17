import 'package:flutter/material.dart';

void main() {
  runApp(
    Myapp()
  );
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.white,
                  child: Center(child: Text("Tauhid",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),)),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.red,
                  child: Center(child: Text("Shahriar",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),)),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.blue,
                  child: Center(child: Text("Sourov",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),)),
                ),
              ],
            ),
          )
        ),
        ),
      );
  }
}
