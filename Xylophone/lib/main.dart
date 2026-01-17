import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp( Xylophone());
}
class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  void playAudio(int num){
    final player = AudioPlayer();
    player.play(AssetSource('note$num.mp3'));
  }

  buildKey({required Color color, required int number}){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero
        ),
        onPressed: (){
          playAudio(number);
        },
        child: Container(
            color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar:AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: Text("Xylophone",
            style: TextStyle(
              fontStyle: FontStyle.italic
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children:<Widget> [
              buildKey(color: Colors.red, number: 1 ),
              buildKey(color: Colors.orange, number: 2),
              buildKey(color: Colors.yellow, number: 3),
              buildKey(color: Colors.greenAccent, number: 4),
              buildKey(color: Colors.green, number: 5),
              buildKey(color: Colors.blue, number: 6),
              buildKey(color: Colors.purple, number: 7),

              /*Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero
                  ),
                  onPressed: (){
                  playAudio(1);
                },
                  child: Container(
                      color: Colors.red
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero
                  ),
                  onPressed: (){
                  playAudio(2);
                },
                  child: Container(
                      color: Colors.orange
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero
                  ),
                  onPressed: (){
                  playAudio(3);
                },
                  child: Container(
                      color: Colors.yellow
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero
                  ),
                  onPressed: (){
                  playAudio(4);
                },
                  child: Container(
                      color: Colors.greenAccent
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero
                  ),
                  onPressed: (){
                  playAudio(5);
                },
                  child: Container(
                      color: Colors.green
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero
                  ),
                  onPressed: (){
                  playAudio(6);
                },
                  child: Container(
                      color: Colors.blue
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero
                  ),
                  onPressed: (){
                  playAudio(7);
                },
                  child: Container(
                      color: Colors.purple
                  ),
                ),
              ),*/
            ],
          ),
        ),
        )
    );
  }
}


