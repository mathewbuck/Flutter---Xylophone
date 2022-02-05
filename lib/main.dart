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
        appBar: AppBar (
        title: Text('Super-Mc-Awesome Xylphone'),
          centerTitle: true,
          backgroundColor: Colors.grey.shade800,
        ),
        backgroundColor: Colors.grey.shade800,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.red, primary: Colors.black),
                child: Text('C'),
                onPressed: (){
                PlaySound(1);
              },
                ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.orange, primary: Colors.black),
                child: Text('D'),
                onPressed: (){
                  PlaySound(2);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.yellow, primary: Colors.black),
                child: Text('E'),
                onPressed: (){
                  PlaySound(3);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.lightGreen, primary: Colors.black),
                child: Text('F'),
                onPressed: (){
                  PlaySound(4);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.green, primary: Colors.black),
                child: Text('G'),
                onPressed: (){
                  PlaySound(5);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue, primary: Colors.black),
                child: Text('A'),
                onPressed: (){
                  PlaySound(6);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.purple, primary: Colors.black),
                child: Text('B'),
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
