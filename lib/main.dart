import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override

  // sick nasty function for playing sound
  void PlaySound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }


  Expanded BuildKeyz({String buttonText, Color color,Color textColor, int soundNumber }) {
    return Expanded(
      child: FlatButton(
        color: color,
        child: Text(buttonText),
        textColor: textColor,
        onPressed: (){
          PlaySound(soundNumber);
        },
      ),
    );
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
            children: <Widget>[
              Padding(padding: EdgeInsets.all(5.0),),
              BuildKeyz(color: Colors.red, textColor: Colors.black, soundNumber: 1, buttonText: 'C'),
              Padding(padding: EdgeInsets.all(5.0),),
              BuildKeyz(color: Colors.orange,textColor: Colors.black, soundNumber: 2, buttonText: 'D'),
              Padding(padding: EdgeInsets.all(5.0),),
              BuildKeyz(color: Colors.yellow, textColor: Colors.black, soundNumber: 3, buttonText: 'E'),
              Padding(padding: EdgeInsets.all(5.0),),
              BuildKeyz(color: Colors.lightGreen, textColor: Colors.black, soundNumber: 4, buttonText: 'F'),
              Padding(padding: EdgeInsets.all(5.0),),
              BuildKeyz(color: Colors.green, textColor: Colors.black, soundNumber: 5, buttonText: 'G'),
              Padding(padding: EdgeInsets.all(5.0),),
              BuildKeyz(color: Colors.blue, textColor: Colors.black, soundNumber: 6, buttonText: 'A'),
              Padding(padding: EdgeInsets.all(5.0),),
              BuildKeyz(color: Colors.purple, textColor: Colors.black, soundNumber: 7, buttonText: 'B'),
              Padding(padding: EdgeInsets.all(5.0),),

            ],
          ),
        ),
      ),
    );
  }
}
