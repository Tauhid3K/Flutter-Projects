import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                foregroundImage: AssetImage("images/p.jpeg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Tauhid Shahriar",
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text("CSE STUDENT",
                style: TextStyle(
                  fontFamily: 'SourceCodePro',
                  fontSize: 20,
                  color: Colors.white,
                  letterSpacing: 6,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 250,
                child: Divider(
                  color: Colors.tealAccent,

                ),
              ),
              Card(
                margin: EdgeInsets.only(left: 10, right: 10),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.phone,
                    color: Colors.teal,
                    size: 40,
                  ),
                  title:
                  Text("+880 1786343902",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "SourceCodePro-VariableFont_wght",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                margin: EdgeInsets.only(left: 10, right: 10),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.email,
                    color: Colors.teal,
                    size: 40,
                  ),
                  title: Text("ts.ek.3902@gmail.com",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "SourceCodePro-VariableFont_wght",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
