import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';



void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override

  void PlaySound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FlatButton(
                color: Colors.red,
                onPressed: (){
                PlaySound(1);
              },
                ),
              FlatButton(
                color: Colors.orange,
                onPressed: (){
                  PlaySound(2);
                },
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: (){
                  PlaySound(3);
                },
              ),
              FlatButton(
                color: Colors.lightGreen,
                onPressed: (){
                  PlaySound(4);
                },
              ),FlatButton(
                color: Colors.green,
                onPressed: (){
                  PlaySound(5);
                },
              ),FlatButton(
                color: Colors.blue,
                onPressed: (){
                  PlaySound(6);
                },
              ),
              FlatButton(
                color: Colors.purple,
                onPressed: (){
                  PlaySound(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
